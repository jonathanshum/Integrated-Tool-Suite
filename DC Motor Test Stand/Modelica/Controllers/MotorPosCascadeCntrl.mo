model MotorPosCascadeCntrl
  DCMotorTestStandAugmented sys;
  Real velSet(fixed = true), posSet = 1500;
  parameter Real kpp = 1.5, kip = 0.0, kdp = 0.0;
  parameter Real kpv = 0.0006, kiv = 0.01, kdv = 0.0;
  parameter Real delT = 0.005;
  Real mPos(fixed = true), mVel(fixed = true);
  Real integPos(fixed = true), valPrevPos(fixed = true);
  Real integVel(fixed = true), valPrevVel(fixed = true);
algorithm
  // Establish the discrete-time environment. All controls are in
  // this environment. Multi-rate problems can be solved with
  // multiple discrete-time zones.
  // This version does position control using velocity control
  // as an inner loop (cascade)
  when sample(0, delT) then
    (mPos, integPos, valPrevPos) := PIDFunc(dt = delT, kp = kpp, ki = kip, kd = kdp, integ = integPos, setpoint = posSet, val = sys.theta, first = false);
    velSet := mPos;
    (mVel, integVel, valPrevVel) := PIDFunc(dt = delT, kp = kpv, ki = kiv, kd = kdv, integ = integVel, setpoint = velSet, val = sys.w, first = false);
    sys.u := mVel;
  end when;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 6, Tolerance = 1e-6, Interval = 0.003));
end MotorPosCascadeCntrl;