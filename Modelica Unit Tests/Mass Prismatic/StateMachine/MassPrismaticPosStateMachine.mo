model MassPrismaticPosStateMachine
  MassPrismaticSystem sys;
  Real velSet(fixed = true), posSet(fixed = true);
  Real vSetProfile(fixed = true), pSetProfile(fixed = true), pProfile0(fixed = true), pProfilef(start = -10.2, fixed = true);
  Real t0(start = 0.2, fixed = true), pos0(fixed = true);
  parameter Real kpp = 5.0, kip = 0.0, kdp = 0.0;
  parameter Real kpv = 3.0, kiv = 10.0, kdv = 0.0;
  parameter Real delT = 0.02;
  Real mPos(fixed = true), mVel(fixed = true);
  Real integPos(fixed = true), valPrevPos(fixed = true);
  Real integVel(fixed = true), valPrevVel(fixed = true);
  Real t1p(fixed = true), t2p(fixed = true), tMovep(fixed = true), accAdj(fixed = true);
  Real decelAdj(fixed = true), vCruiseAdj(fixed = true);
  Boolean moveDone(start = false, fixed = true);
  //Time at which profile starts
  parameter Real tStart = 2.0, dtHold = 2.2;
  // State machine data
  Integer state(start = 0,fixed = true), nextState(start = 0, fixed = true);	
  Boolean entry(start = true, fixed = true);

  function SetVal
    input Real x;
    output Real y;
  algorithm
    y := x;
  end SetVal;
algorithm
  // Establish the discrete-time environment. All controls are in
  // this environment. Multi-rate problems can be solved with
  // multiple discrete-time zones.
  // This version does position control using velocity control
  // as an inner loop (cascade) and uses  a trapeziodal profile to
  // get the setpoints during the move.
  // Data for pt-to-pt profile
  // input Real p0, pf, acc, decel, vcruise
  // output Real t1, t2, tMove, accAdj, decelAdj, vCruiseAdj;
  // States:
  // 0 - initialize, bring system under control at initial position; transition to state 1 when time is up
  // 1 - move to first position; transition to state 2 when move is done
  // 2 - wait for specified time while holding position; transition to state 3 when time is up
  // 3 - move back to original position
  
  when sample(0, delT) then
	if nextState <> -1 then
		entry := true;
		state := nextState;
	else
		entry := false;
	end if;
	nextState := -1;
	
	if state == 0 then
		if entry then
			// Entry section
			posSet := sys.pos;
		end if;
		
		// Action section
        (mPos, integPos, valPrevPos) := PIDFunc(dt = delT, kp = kpp, ki = kip, kd = kdp, integ = integPos, setpoint = posSet, val = sys.pos, first = false);
        velSet := mPos + vSetProfile;
        (mVel, integVel, valPrevVel) := PIDFunc(dt = delT, kp = kpv, ki = kiv, kd = kdv, integ = integVel, setpoint = velSet, val = sys.vel, first = false);
        sys.u := mVel;
	   
	    // Transition test/exit section
	    if time > tStart then
			nextState := 1;
		end if;
	end if;
	
	if state == 1 then
      if entry then
		 pos0 := sys.pos;
        (t1p, t2p, tMovep, accAdj, decelAdj, vCruiseAdj, pProfile0) := ComputeTrap1(p0 = sys.pos, pf = pProfilef, acc = 1.1, decel = 1.2, vCruise = 1.5);
        t0 := time;
      end if;
	  
	  // Action section
      (pSetProfile, vSetProfile, moveDone) := RunTrap(t0 = tStart, t = time, p0 = pProfile0, pf = pProfilef, t1 = t1p, t2 = t2p, tMove = tMovep, acc = accAdj, decel = decelAdj, vCruise = vCruiseAdj);
      posSet := pSetProfile;
      (mPos, integPos, valPrevPos) := PIDFunc(dt = delT, kp = kpp, ki = kip, kd = kdp, integ = integPos, setpoint = posSet, val = sys.pos, first = false);
      velSet := mPos + vSetProfile;
      (mVel, integVel, valPrevVel) := PIDFunc(dt = delT, kp = kpv, ki = kiv, kd = kdv, integ = integVel, setpoint = velSet, val = sys.vel, first = false);
      sys.u := mVel;
	  
	  // Transition test/exit section
	  if moveDone then
		nextState := 2;
	  end if;
		end if;
	
    if state == 2 then
		// Entry section
		if entry then
			t0 := time;
			posSet := pSetProfile;  // Final profile position
			velSet := 0.0;
		end if;
		
		// Action section, hold position
		  (mPos, integPos, valPrevPos) := PIDFunc(dt = delT, kp = kpp, ki = kip, kd = kdp, integ = integPos, setpoint = posSet, val = sys.pos, first = false);
		  velSet := mPos + vSetProfile;
		  (mVel, integVel, valPrevVel) := PIDFunc(dt = delT, kp = kpv, ki = kiv, kd = kdv, integ = integVel, setpoint = velSet, val = sys.vel, first = false);
		  sys.u := mVel;

		// Transition test/exit section
		if time >= (t0 + dtHold) then
			nextState := 3;
		end if;
	end if;
	
	if state == 3 then
		// Entry section
		if entry then
			 pProfilef := pos0; // Return to original position
			(t1p, t2p, tMovep, accAdj, decelAdj, vCruiseAdj, pProfile0) := ComputeTrap1(p0 = posSet, pf = pProfilef, acc = 1.1, decel = 1.2, vCruise = 1.5);
			t0 := time;			
		end if;
		
		// Action section
       (pSetProfile, vSetProfile, moveDone) := RunTrap(t0 = t0, t = time, p0 = pProfile0, pf = pProfilef, t1 = t1p, t2 = t2p, tMove = tMovep, acc = accAdj, decel = decelAdj, vCruise = vCruiseAdj);
       posSet := pSetProfile;
       (mPos, integPos, valPrevPos) := PIDFunc(dt = delT, kp = kpp, ki = kip, kd = kdp, integ = integPos, setpoint = posSet, val = sys.pos, first = false);
       velSet := mPos + vSetProfile;
       (mVel, integVel, valPrevVel) := PIDFunc(dt = delT, kp = kpv, ki = kiv, kd = kdv, integ = integVel, setpoint = velSet, val = sys.vel, first = false);
       sys.u := mVel;
	   
	   // Transition test/exit
	   // No transitions from this state
	end if;
  end when;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 12, Tolerance = 1e-06, Interval = 0.024));
end MassPrismaticPosStateMachine;
