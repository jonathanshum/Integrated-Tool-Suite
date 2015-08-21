model Spring3d
  inner Modelica.Mechanics.MultiBody.World world annotation(Placement(visible = true, transformation(origin = {-62, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Forces.SpringDamperParallel springDamperParallel1(s_unstretched = 0.5, c = 1.2, d = 1) annotation(Placement(visible = true, transformation(origin = {-24, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.Body body1(m = 0.75, r_0(start = {0, -6.63125, 0}, fixed = true), w_a(fixed = true), w_0_fixed = false, z_0_fixed = false, angles_fixed = true, v_0(fixed = true, start = {0, 1, 1}), r_CM = {0, 0, 0}) annotation(Placement(visible = true, transformation(origin = {4, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  //parameter Real springDamperParallel1.c = 1.2;
  //parameter Real k = 49;
equation
  //connect(k, springDamperParallel1.c);
  connect(springDamperParallel1.frame_b, body1.frame_a) annotation(Line(points = {{-14, 62}, {-6, 62}, {-6, 62}, {-6, 62}}, color = {95, 95, 95}));
  connect(springDamperParallel1.frame_a, world.frame_b) annotation(Line(points = {{-34, 62}, {-52, 62}, {-52, 62}, {-52, 62}}, color = {95, 95, 95}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.02));
end Spring3d;