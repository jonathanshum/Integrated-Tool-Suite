model Test
  RobotDCMotor robotdcmotor1 annotation(Placement(visible = true, transformation(origin = {-2, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.IdealGear idealgear1(ratio = 1000) annotation(Placement(visible = true, transformation(origin = {32, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.AngleSensor anglesensor1 annotation(Placement(visible = true, transformation(origin = {74, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-48, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalvoltage1 annotation(Placement(visible = true, transformation(origin = {-32, 54}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 10) annotation(Placement(visible = true, transformation(origin = {-74, 74}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(const.y, signalvoltage1.v) annotation(Line(points = {{-63, 74}, {-32, 74}, {-32, 60}, {-32, 60}}, color = {0, 0, 127}));
  connect(signalvoltage1.n, robotdcmotor1.pin_n) annotation(Line(points = {{-42, 54}, {-42, 41.5}, {-22, 41.5}, {-22, 15}}, color = {0, 0, 255}));
  connect(signalvoltage1.p, robotdcmotor1.pin_p) annotation(Line(points = {{-22, 54}, {-19, 54}, {-19, 15}}, color = {0, 0, 255}));
  connect(ground1.p, robotdcmotor1.pin_n) annotation(Line(points = {{-48, 10}, {-22, 10}, {-22, 16}, {-22, 16}}, color = {0, 0, 255}));
  connect(idealgear1.flange_b, anglesensor1.flange) annotation(Line(points = {{42, 16}, {64, 16}, {64, 20}, {64, 20}}));
  connect(robotdcmotor1.flange_a, idealgear1.flange_a) annotation(Line(points = {{10, 16}, {22, 16}, {22, 16}, {22, 16}}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end Test;