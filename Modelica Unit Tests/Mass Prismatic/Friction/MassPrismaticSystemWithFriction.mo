model MassPrismaticSystemWithFriction
  Modelica.Mechanics.MultiBody.Parts.PointMass pointmass1(animation = false, m = 0.5, r_0(start = {5, 0, 0})) annotation(Placement(visible = true, transformation(origin = {42, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner Modelica.Mechanics.MultiBody.World world(enableAnimation = false, animateWorld = false, animateGravity = false) annotation(Placement(visible = true, transformation(origin = {-34, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic1(useAxisFlange = true, animation = false, s(start = 0.0, fixed = true), n = {1, 0, 0}, v(start = 0.0, fixed = true)) annotation(Placement(visible = true, transformation(origin = {2, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sensors.RelPositionSensor relpositionsensor1 annotation(Placement(visible = true, transformation(origin = {2, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force force1(useSupport = true) annotation(Placement(visible = true, transformation(origin = {-2, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sensors.RelSpeedSensor relspeedsensor1 annotation(Placement(visible = true, transformation(origin = {2, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput vel "Send velocity signal to controller" annotation(Placement(visible = true, transformation(origin = {28, -46}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {107, 99}, extent = {{-43, -43}, {43, 43}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput pos annotation(Placement(visible = true, transformation(origin = {28, -18}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -88}, extent = {{-50, -50}, {50, 50}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput force "Get actuation signal from controller" annotation(Placement(visible = true, transformation(origin = {-40, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-90, 6}, extent = {{-40, -40}, {40, 40}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.SupportFriction supportFriction1(f_pos = [0, 1], useSupport = true) annotation(Placement(visible = true, transformation(origin = {-2, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(supportFriction1.support, force1.support) annotation(Line(points = {{-2, 60}, {-2, 34}}, color = {0, 127, 0}));
  connect(supportFriction1.flange_b, prismatic1.axis) annotation(Line(points = {{8, 70}, {10, 70}, {10, 22}}, color = {0, 127, 0}));
  connect(relspeedsensor1.v_rel, vel) annotation(Line(points = {{2, -45}, {28, -45}, {28, -46}}, color = {0, 0, 127}));
  connect(force1.flange, prismatic1.axis) annotation(Line(points = {{8, 44}, {10, 44}, {10, 22}, {10, 22}}, color = {0, 127, 0}));
  connect(relspeedsensor1.flange_b, relpositionsensor1.flange_b) annotation(Line(points = {{12, -34}, {16, -34}, {16, -8}, {12, -8}, {12, -8}}, color = {0, 127, 0}));
  connect(relspeedsensor1.flange_a, relpositionsensor1.flange_a) annotation(Line(points = {{-8, -34}, {-14, -34}, {-14, -8}, {-8, -8}, {-8, -8}, {-8, -8}}, color = {0, 127, 0}));
  connect(force, force1.f) annotation(Line(points = {{-40, 44}, {-14, 44}}, color = {0, 0, 127}));
  connect(force1.support, prismatic1.support) annotation(Line(points = {{-2, 34}, {-2, 22}}, color = {0, 127, 0}));
  connect(relpositionsensor1.s_rel, pos) annotation(Line(points = {{2, -19}, {18, -19}, {18, -18}, {18, -18}}, color = {0, 0, 127}));
  connect(relpositionsensor1.flange_a, prismatic1.support) annotation(Line(points = {{-8, -8}, {-11, -8}, {-11, -8}, {-14, -8}, {-14, 22}, {-2, 22}, {-2, 22}, {-2, 22}}, color = {0, 127, 0}));
  connect(relpositionsensor1.flange_b, prismatic1.axis) annotation(Line(points = {{12, -8}, {16, -8}, {16, 22}, {10, 22}, {10, 22}}, color = {0, 127, 0}));
  connect(prismatic1.frame_b, pointmass1.frame_a) annotation(Line(points = {{12, 16}, {18.5, 16}, {18.5, 16}, {27, 16}, {27, 16}, {42, 16}, {42, 16}, {43, 16}, {43, 16}, {41.5, 16}, {41.5, 16}, {42, 16}}, color = {95, 95, 95}));
  connect(prismatic1.frame_a, world.frame_b) annotation(Line(points = {{-8, 16}, {-13, 16}, {-13, 16}, {-16, 16}, {-16, 16}, {-24, 16}, {-24, 16}, {-23, 16}, {-23, 16}, {-23.5, 16}, {-23.5, 16}, {-24, 16}}, color = {95, 95, 95}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end MassPrismaticSystemWithFriction;