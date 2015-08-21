model MassPrismaticControl
  Modelica.Blocks.Interfaces.RealOutput Velocity annotation(Placement(visible = true, transformation(origin = {54, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput Position annotation(Placement(visible = true, transformation(origin = {54, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Pulse pulse1(amplitude = 0, width = 50, period = 5, nperiod = 1, offset = 0, startTime = 0) annotation(Placement(visible = true, transformation(origin = {-28, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  MassPrismaticSystem massPrismaticSystem1 annotation(Placement(visible = true, transformation(origin = {12, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(pulse1.y, massPrismaticSystem1.force) annotation(Line(points = {{-17, -6}, {-7.5, -6}, {-7.5, -5}, {3, -5}}, color = {0, 0, 127}));
  connect(massPrismaticSystem1.pos, Velocity) annotation(Line(points = {{23, -15}, {50, -15}, {50, -16}, {54, -16}}, color = {0, 0, 127}));
  connect(massPrismaticSystem1.vel, Position) annotation(Line(points = {{23, 4}, {54, 4}}, color = {0, 0, 127}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end MassPrismaticControl;