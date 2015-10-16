model DCMotorControl
  Modelica.Blocks.Sources.Constant const(k = 10) annotation(Placement(visible = true, transformation(origin = {-64, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.AngleSensor anglesensor1 annotation(Placement(visible = true, transformation(origin = {36, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.SpeedSensor speedsensor1 annotation(Placement(visible = true, transformation(origin = {36, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalvoltage1 annotation(Placement(visible = true, transformation(origin = {-4, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {32, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput pos1 annotation(Placement(visible = true, transformation(origin = {78, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput vel1 annotation(Placement(visible = true, transformation(origin = {80, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  DCMotor2 dCMotor21 annotation(Placement(visible = true, transformation(origin = {0, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(dCMotor21.flange_a, speedsensor1.flange) annotation(Line(points = {{10, 50}, {16, 50}, {16, 20}, {26, 20}, {26, 20}, {26, 20}, {26, 20}}));
  connect(dCMotor21.flange_a, anglesensor1.flange) annotation(Line(points = {{10, 50}, {26, 50}, {26, 50}, {26, 50}}));
  connect(dCMotor21.pin_n, signalvoltage1.n) annotation(Line(points = {{-10, 47}, {-22, 47}, {-22, 64}, {4, 64}, {4, 80}, {6, 80}, {6, 80}}, color = {0, 0, 255}));
  connect(dCMotor21.pin_p, signalvoltage1.p) annotation(Line(points = {{-10, 53}, {-14, 53}, {-14, 80}, {-14, 80}}, color = {0, 0, 255}));
  connect(speedsensor1.w, vel1) annotation(Line(points = {{47, 20}, {80, 20}}, color = {0, 0, 127}));
  connect(pos1, anglesensor1.phi) annotation(Line(points = {{78, 50}, {47, 50}}, color = {0, 0, 127}));
  connect(signalvoltage1.n, ground1.p) annotation(Line(points = {{6, 80}, {32, 80}, {32, 80}, {32, 80}, {32, 80}}, color = {0, 0, 255}));
  connect(const.y, signalvoltage1.v) annotation(Line(points = {{-53, 70}, {-30, 70}, {-30, 92}, {-4, 92}, {-4, 86}, {-4, 86}}, color = {0, 0, 127}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end DCMotorControl;