package ControlFunctions "Control functions: PID and Profiling"
  function PIDFunc
    input Real dt;
    input Real kp = 0.0;
    input Real ki = 0.0;
    input Real kd = 0.0;
    input Real integ = 0.0;
    input Real setpoint = 0.0;
    input Real val;
    input Real prevVal = 0.0, prevErr = 0.0;
    input Boolean first = true;
    input Real lowLim = -1.0e10;
    input Real highLim = 1.0e10;
    output Real m;
    output Real integNew;
    output Real valOut, errOut;
    output Boolean nextFirst;
  protected
    Real error, deriv, mTrial;
  algorithm
    error := setpoint - val;
    integNew := integ + error * dt;
    if first then
      deriv := 0.0;
    else
      deriv := (error - prevErr) / dt;
    end if;
    mTrial := kp * error + ki * integNew + kd * deriv;
	if mTrial > highLim then
		m := highLim;
	elseif mTrial < lowLim then
		m := lowLim;
	else
		m := mTrial;
	end if;
    valOut := val;
    errOut := error;
    nextFirst := false;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
  end PIDFunc;

  function ComputeTrap1
    input Real p0, pf, acc, decel, vCruise, minFracCruise = 0.3;
    output Real t1, t2, tMove, accAdj, decelAdj, vCruiseAdj, pos0;
  protected
    Real dpAbs, tAcc, tDecel, tCruise, dAcc, dDecel, dCruise, dAccDecel;
  algorithm
    // Nominal values based on input specs (independent of direction)
    dpAbs := abs(pf - p0);
    tAcc := abs(vCruise / acc);
    dAcc := abs(tAcc * vCruise / 2.0);
    tDecel := abs(vCruise / decel);
    dDecel := abs(tDecel * vCruise / 2.0);
    dCruise := dpAbs - dAcc - dDecel;
    // Check to see if adjustment of acc and decel will be needed
    // If so, compute new vCruise and recompute basic move data
    if dCruise < 0.0 or abs(dCruise / dpAbs) < minFracCruise then
      dCruise := minFracCruise * dpAbs;
      dAccDecel := dpAbs - dCruise;
      dDecel := dAccDecel / (1.0 + abs(decel / acc));
      dAcc := dAccDecel - dDecel;
      tAcc := sqrt(2.0 * dAcc / abs(acc));
      vCruiseAdj := tAcc * abs(acc);
      tDecel := abs(vCruiseAdj / decel);
    else
      vCruiseAdj := vCruise;
    end if;
    // Set proper signs for direction of travel
    if pf > p0 then
      accAdj := abs(acc);
      decelAdj := -abs(decel);
      vCruiseAdj := abs(vCruiseAdj);
    else
      accAdj := -abs(acc);
      decelAdj := abs(decel);
      vCruiseAdj := -abs(vCruiseAdj);
    end if;
    // Times are relative to t0 = 0
    tCruise := dCruise / abs(vCruiseAdj);
    t1 := tAcc;
    t2 := tAcc + tCruise;
    tMove := t2 + tDecel;
    pos0 := p0;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
  end ComputeTrap1;

  function RunTrap
    input Real t0, t, p0, pf, t1, t2, tMove, acc, decel, vCruise;
    output Real pSet, vSet;
    output Boolean done;
  protected
    Real tr;
  algorithm
    tr := t - t0;
    done := false;
    if tr < t1 then
      vSet := acc * tr;
      pSet := p0 + 0.5 * vSet * tr;
    elseif tr > t1 and tr < t2 then
      vSet := vCruise;
      pSet := p0 + 0.5 * vCruise * t1 + vCruise * (tr - t1);
    elseif tr > t2 and tr < tMove then
      vSet := vCruise + decel * (tr - t2);
      pSet := p0 + 0.5 * vCruise * t1 + vCruise * (t2 - t1) + 0.5 * (vCruise + vSet) * (tr - t2);
    elseif t > tMove then
      vSet := 0.0;
      pSet := pf;
      done := true;
    end if;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
  end RunTrap;
end ControlFunctions;