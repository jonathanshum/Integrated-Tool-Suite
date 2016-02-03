model PID
  import ControlFunctions.*;
  parameter Real delT = 0.01;
  parameter Real kpv = 1.0e-2, kiv = 0.15, kdv = 0.0;
  parameter Real loLim = -1.1, hiLim = 1.1;
  Real yinteg(fixed = true), yprev(fixed = true), errPrev(start = 0, fixed = true);
  Boolean frst(start = true, fixed = true);
  Modelica.Blocks.Interfaces.RealOutput y annotation(Placement(visible = true, transformation(origin = {118, 4.44089e-16}, extent = {{-38, -38}, {38, 38}}, rotation = 0), iconTransformation(origin = {100, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-120, -8.88178e-16}, extent = {{-40, -40}, {40, 40}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
algorithm
  // Establish the discrete-time environment. All controls are in
  // this environment.
  when sample(0, delT) then
    (y, yinteg, yprev, errPrev, frst) := PIDFunc(dt = delT, kp = kpv, ki = kiv, kd = kdv, integ = yinteg, setpoint = 0, lowLim = loLim, highLim = hiLim, val = u, prevErr = errPrev, first = frst);
  end when;
  annotation(Icon, Diagram);
end PID;