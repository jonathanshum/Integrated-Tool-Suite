model Motor
  import ControlFunctions.*;
  import SI = Modelica.SIunits;
  import Modelica.Utilities.Streams;
  parameter Real[3] spinAxis = {0, 0, 1};
  // thickness and diameter of flywheel, m
  parameter SI.Length thick = 0.03, diam = 0.08;
  parameter SI.Density dens = 7700;
  parameter SI.RotationalDampingConstant bd = 0.001;
  // density, kg/m^3
  //SI.Torque appliedTorque;
  // Parameters and variables for motor control
  parameter Real delT = 0.002;
  Real velSet(start = 0.0, fixed = true);
  parameter Real kpv = 0.2, kiv = 0.1, kdv = 0.0;
  parameter Real loLim = -1.1, hiLim = 1.1;
  parameter Boolean rampOn = true;
  SI.AngularAcceleration rampRate(fixed = false);
  Real mVel(start = 0, fixed = true);
  Real integVel(fixed = true), velPrev(fixed = true), errPrev(start = 0, fixed = true);
  Boolean frst(start = true, fixed = true);
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(visible = true, transformation(origin = {-66, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Damper damper1(d = bd, phi_rel(fixed = true)) annotation(Placement(visible = true, transformation(origin = {-30, 22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Torque2 torque21 annotation(Placement(visible = true, transformation(origin = {-34, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute1(n = spinAxis, useAxisFlange = true, w(fixed = true)) annotation(Placement(visible = true, transformation(origin = {-38, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder bodyCylinder1(r = spinAxis * thick / 2, r_shape = -spinAxis * thick / 2, diameter = diam, density = dens, angles_fixed = false, w_0_fixed = false) annotation(Placement(visible = true, transformation(origin = {-6, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
initial equation
  torque21.tau = 0.0;
equation
  connect(revolute1.frame_b, bodyCylinder1.frame_a) annotation(Line(points = {{-28, 0}, {-16, 0}, {-16, 0}, {-16, 0}}, color = {95, 95, 95}));
  connect(revolute1.frame_a, frame_a) annotation(Line(points = {{-48, 0}, {-66, 0}, {-66, 0}, {-66, 0}}, color = {95, 95, 95}));
  connect(torque21.flange_a, revolute1.support) annotation(Line(points = {{-44, 40}, {-44, 40}, {-44, 10}, {-44, 10}}));
  connect(damper1.flange_a, revolute1.support) annotation(Line(points = {{-40, 22}, {-44, 22}, {-44, 16}, {-44, 16}, {-44, 10}, {-44, 10}}));
  connect(damper1.flange_b, revolute1.axis) annotation(Line(points = {{-20, 22}, {-20, 22}, {-20, 10}, {-38, 10}, {-38, 10}}));
  connect(torque21.flange_b, revolute1.axis) annotation(Line(points = {{-24, 40}, {-14, 40}, {-14, 10}, {-38, 10}, {-38, 10}}));
  //torque21.tau = mVel;
algorithm
  // Establish the discrete-time environment. All controls are in
  // this environment.
  when sample(0, delT) then
    if rampOn then
      velSet := velSet + rampRate * delT;
    end if;
    (mVel, integVel, velPrev, errPrev, frst) := PIDFunc(dt = delT, kp = kpv, ki = kiv, kd = kdv, integ = integVel, setpoint = velSet, lowLim = loLim, highLim = hiLim, val = revolute1.w, prevErr = errPrev, first = frst);
    torque21.tau := mVel;
  end when;
  //Streams.print("<Motor> rampRate " + String(rampRate) + " velSet " + String(velSet));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 5, Tolerance = 1e-06, Interval = 0.01));
end Motor;