model BrushlessMotor
  Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_PermanentMagnet dcpm(IaNominal = 2.3, Jr(start = 0.1), La = 0.001, Ra = 0.0071, VaNominal = 5.55, wNominal = 450)  annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 6)  annotation(Placement(visible = true, transformation(origin = {-28, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage1 annotation(Placement(visible = true, transformation(origin = {0, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.AngleSensor angleSensor1 annotation(Placement(visible = true, transformation(origin = {68, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {34, 22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.SpeedSensor speedSensor1 annotation(Placement(visible = true, transformation(origin = {44, -44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(speedSensor1.flange, dcpm.flange) annotation(Line(points = {{34, -44}, {18, -44}, {18, 0}, {10, 0}}));
  connect(angleSensor1.flange, dcpm.flange) annotation(Line(points = {{58, 0}, {10, 0}}));
  connect(ground1.p, signalVoltage1.n) annotation(Line(points = {{34, 32}, {10, 32}, {10, 32}, {10, 32}}, color = {0, 0, 255}));
  connect(const.y, signalVoltage1.v) annotation(Line(points = {{-16, 54}, {0, 54}, {0, 40}, {0, 40}}, color = {0, 0, 127}));
  connect(signalVoltage1.n, dcpm.pin_an) annotation(Line(points = {{10, 32}, {10, 14}, {-6, 14}, {-6, 10}}, color = {0, 0, 255}));
  connect(signalVoltage1.p, dcpm.pin_ap) annotation(Line(points = {{-10, 32}, {-10, 18}, {6, 18}, {6, 10}}, color = {0, 0, 255}));
  annotation(uses(Modelica(version = "3.2.1")));
end BrushlessMotor;