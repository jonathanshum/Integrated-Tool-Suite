model MassPrismaticVelCntrl
  MassPrismaticSystem sys;
  Real velSet = 0.3;
  parameter Real kpv = 3.0, kiv = 10.0, kdv = 0.0;
  parameter Real delT = 0.02;
  Real mVel;
  Real integVel, valPrev;
algorithm
  // Establish the discrete-time environment. All controls are in
  // this environment. Multi-rate problems can be solved with
  // multiple discrete-time zones.
  when sample(0, delT) then
    (mVel, integVel, valPrev) := PIDFunc(dt = delT, kp = kpv, ki = kiv, kd = kdv, integ = integVel, setpoint = velSet, val = sys.vel, first = false);
    sys.u := mVel;
  end when;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 1.5, Tolerance = 1e-6, Interval = 0.003));
end MassPrismaticVelCntrl;