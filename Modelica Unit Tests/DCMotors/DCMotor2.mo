model DCMotor2
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 1) annotation(Placement(visible = true, transformation(origin = {-56, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor inductor1(L = 1) annotation(Placement(visible = true, transformation(origin = {-24, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.EMF emf(useSupport = false, k = 1) annotation(Placement(visible = true, transformation(origin = {-4, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a annotation(Placement(visible = true, transformation(origin = {100, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(Placement(visible = true, transformation(origin = {-100, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Spring spring1(c = 1) annotation(Placement(visible = true, transformation(origin = {68, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia1(J = 1) annotation(Placement(visible = true, transformation(origin = {34, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(inertia1.flange_a, emf.flange) annotation(Line(points = {{24, 14}, {6, 14}}));
  connect(inertia1.flange_b, spring1.flange_a) annotation(Line(points = {{44, 14}, {58, 14}}));
  connect(spring1.flange_b, flange_a) annotation(Line(points = {{78, 14}, {100, 14}}));
  connect(pin_p, resistor1.p) annotation(Line(points = {{-100, 40}, {-66, 40}, {-66, 40}, {-66, 40}}, color = {0, 0, 255}));
  connect(pin_n, emf.n) annotation(Line(points = {{-100, 0}, {-4, 0}, {-4, 4}}, color = {0, 0, 255}));
  connect(inductor1.n, emf.p) annotation(Line(points = {{-14, 40}, {-4, 40}, {-4, 24}}, color = {0, 0, 255}));
  connect(resistor1.n, inductor1.p) annotation(Line(points = {{-46, 40}, {-34, 40}}, color = {0, 0, 255}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end DCMotor2;