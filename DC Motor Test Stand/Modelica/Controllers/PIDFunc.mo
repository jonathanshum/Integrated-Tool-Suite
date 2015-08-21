function PIDFunc
  input Real dt;
  input Real kp = 0.0;
  input Real ki = 0.0;
  input Real kd = 0.0;
  input Real integ;
  input Real setpoint;
  input Real val;
  input Real prevVal = 0.0;
  input Boolean first;
  input Real lowLim = -1.0e10;
  input Real highLim = 1.0e10;
  output Real m;
  output Real integNew;
  output Real valOut;
protected
  Real error;
algorithm
  error := setpoint - val;
  integNew := integ + error * dt;
  m := kp * error + ki * integNew;
  valOut := val;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end PIDFunc;