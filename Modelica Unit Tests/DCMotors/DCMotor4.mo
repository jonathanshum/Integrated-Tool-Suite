model DCMotor4
  Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_PermanentMagnet dcpm annotation(Placement(visible = true, transformation(origin = {0, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {24, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {34, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {-24, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-26, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(pin_n, dcpm.pin_an) annotation(Line(points = {{-24, 100}, {-6, 100}, {-6, 12}}, color = {0, 0, 255}));
  connect(pin_p, dcpm.pin_ap) annotation(Line(points = {{24, 100}, {6, 100}, {6, 12}}, color = {0, 0, 255}));
  connect(dcpm.flange, flange_a) annotation(Line(points = {{10, 2}, {102, 2}, {102, 0}, {102, 0}}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end DCMotor4;