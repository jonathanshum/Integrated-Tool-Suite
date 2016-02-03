model SpeedController
  import ControlFunctions.*;
  parameter Real delT = 0.01;
  parameter Real kpv = 1.0e-2, kiv = 0.15, kdv = 0.0;
  parameter Real loLim = -1.1, hiLim = 1.1;
  Real mVel(start = 0, fixed = true);
  Real integVel(fixed = true), velPrev(fixed = true), errPrev(start = 0, fixed = true);
  Boolean frst(start = true, fixed = true);
  Modelica.Blocks.Interfaces.RealOutput voltage annotation(Placement(visible = true, transformation(origin = {109, 1}, extent = {{-15, -15}, {15, 15}}, rotation = 0), iconTransformation(origin = {100, -6.89553e-16}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput velocity annotation(Placement(visible = true, transformation(origin = {-110, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput vsetpt annotation(Placement(visible = true, transformation(origin = {-112, 46}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-100, 70}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  equation
  voltage = mVel;
algorithm
  // Establish the discrete-time environment. All controls are in
  // this environment.
  when sample(0, delT) then
    (mVel, integVel, velPrev, errPrev, frst) := PIDFunc(dt = delT, kp = kpv, ki = kiv, kd = kdv, integ = integVel, setpoint = vsetpt, lowLim = loLim, highLim = hiLim, val = velocity, prevErr = errPrev, first = frst);
    //voltage := mVel;
  end when; annotation(Icon, Diagram);
end SpeedController;