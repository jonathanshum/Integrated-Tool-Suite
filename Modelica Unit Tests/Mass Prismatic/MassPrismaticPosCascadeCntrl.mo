model MassPrismaticPosCascadeCntrl
  MassPrismaticSystem sys;
  Real velSet(fixed = true), posSet = 1.2;
  parameter Real kpp = 5.0, kip = 0.0, kdp = 0.0;
  parameter Real kpv = 3.0, kiv = 10.0, kdv = 0.0;
  parameter Real delT = 0.02;
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
    (mPos, integPos, valPrevPos) := PIDFunc(dt = delT, kp = kpp, ki = kip, kd = kdp, integ = integPos, setpoint = posSet, val = sys.pos, first = false);
    velSet := mPos;
    (mVel, integVel, valPrevVel) := PIDFunc(dt = delT, kp = kpv, ki = kiv, kd = kdv, integ = integVel, setpoint = velSet, val = sys.vel, first = false);
    sys.u := mVel;
  end when;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 1.5, Tolerance = 1e-6, Interval = 0.003));
end MassPrismaticPosCascadeCntrl;