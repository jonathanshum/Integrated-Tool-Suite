model TestConnectors
  inner Modelica.Mechanics.MultiBody.World world(g = 9.81) annotation(Placement(visible = true, transformation(origin = {-44, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.Spring spring1(s_unstretched = 0.2, m = 0.5, c = TestConnectorsFunction(1, 3)) annotation(Placement(visible = true, transformation(origin = {2, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Real x;
  Real y;
  Modelica.Mechanics.MultiBody.Parts.Body body1(r_CM = {0, 0, 0}, m = 1, animation = true, angles_fixed = true, w_0_fixed = true, r_0(start = {0.1, -0.3, 0})) annotation(Placement(visible = true, transformation(origin = {76, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.WorldForce force annotation(Placement(visible = true, transformation(origin = {-10, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u annotation(Placement(visible = true, transformation(origin = {-46, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-120, -12}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
initial equation
  y * y = 100 * time;
equation
  x = 1;
  der(y) = time;
  force.force[2] = time * 50;
  force.force[3] = 0;
  connect(u, force.force[1]) annotation(Line(points = {{-46, 20}, {-22, 20}, {-22, 20}, {-22, 20}}, color = {0, 0, 127}));
  connect(force.frame_b, spring1.frame_b) annotation(Line(points = {{0, 20}, {12, 20}, {12, 52}, {12, 52}}, color = {95, 95, 95}));
  connect(body1.frame_a, spring1.frame_b) annotation(Line(points = {{66, 52}, {12, 52}, {12, 52}, {12, 52}, {12, 52}}, color = {95, 95, 95}));
  connect(spring1.frame_a, world.frame_b) annotation(Line(points = {{-8, 52}, {-34, 52}}, color = {95, 95, 95}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 10, Tolerance = 0.0001, Interval = 0.02));
end TestConnectors;