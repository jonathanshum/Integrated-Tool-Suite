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