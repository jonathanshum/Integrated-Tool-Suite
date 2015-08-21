model MassPrismaticControlWithFriction
  Modelica.Blocks.Interfaces.RealOutput Velocity annotation(Placement(visible = true, transformation(origin = {54, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput Position annotation(Placement(visible = true, transformation(origin = {54, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Pulse pulse1(amplitude = 5, width = 50, period = 5, nperiod = 1, offset = 0, startTime = 0) annotation(Placement(visible = true, transformation(origin = {-28, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  MassPrismaticSystemWithFriction massPrismaticSystemWithFriction1 annotation(Placement(visible = true, transformation(origin = {14, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(massPrismaticSystemWithFriction1.pos, Velocity) annotation(Line(points = {{25, -15}, {48, -15}, {48, -18}, {48, -18}}, color = {0, 0, 127}));
  connect(massPrismaticSystemWithFriction1.vel, Position) annotation(Line(points = {{25, 4}, {50, 4}, {50, 4}, {50, 4}}, color = {0, 0, 127}));
  connect(pulse1.y, massPrismaticSystemWithFriction1.force) annotation(Line(points = {{-17, -6}, {4, -6}, {4, -6}, {4, -6}}, color = {0, 0, 127}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end MassPrismaticControlWithFriction;