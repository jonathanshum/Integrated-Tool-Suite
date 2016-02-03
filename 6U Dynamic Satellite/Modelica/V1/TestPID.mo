model TestPID
  PID pID1 annotation(Placement(visible = true, transformation(origin = {4, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step1(height = -1, startTime = 0) annotation(Placement(visible = true, transformation(origin = {-46, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(step1.y, pID1.u) annotation(Line(points = {{-35, 4}, {-8, 4}, {-8, 0}, {-6, 0}}, color = {0, 0, 127}));
  annotation(Icon, Diagram);
end TestPID;