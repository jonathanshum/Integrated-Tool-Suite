model Satellite
  import SI = Modelica.SIunits;
  import Vec = Modelica.Math.Vectors;
  import Modelica.Math.Matrices;
  import Modelica_LinearSystems2.StateSpace.Analysis;
  Real[3] xAxisSat, yAxisSat, zAxisSat;
  parameter SI.Length xLen = 0.5, yLen = 1.0, zLen = 1.5;
  parameter SI.Density densSat = 50.0;
  // kg/m^3
  // Motor is named for its axis of rotation
  inner Modelica.Mechanics.MultiBody.World world(g = 0) annotation(Placement(visible = true, transformation(origin = {-78, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Sat3DControlBlock sat3DControlBlock1 annotation(Placement(visible = true, transformation(origin = {-60, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = {xLen / 4, 0, 0}) annotation(Placement(visible = true, transformation(origin = {0, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Motor xMotor(bd = 0.01, delT = 0.002, diam = 0.08, spinAxis = {1, 0, 0}, thick = 0.03) annotation(Placement(visible = true, transformation(origin = {16, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.BodyBox satelliteBody(r = {xLen / 2, 0, 0}, r_shape = {-xLen / 2, 0, 0}, widthDirection = {0, 1, 0}, length = xLen, width = yLen, height = zLen, density = densSat, w_0_fixed = true, z_0_fixed = false, angles_fixed = true, r_0(fixed = true), lengthDirection = {1, 0, 0}, v_0(fixed = true)) annotation(Placement(visible = true, transformation(origin = {24, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Motor yMotor(bd = 0.01, spinAxis = {0, 1, 0}) annotation(Placement(visible = true, transformation(origin = {-44, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(r = {0, 0, -xLen / 4}) annotation(Placement(visible = true, transformation(origin = {0, -18}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Motor zMotor(bd = 0.01) annotation(Placement(visible = true, transformation(origin = {18, -42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = {0, -xLen / 4, 0}) annotation(Placement(visible = true, transformation(origin = {-20, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
equation
  connect(fixedTranslation2.frame_b, yMotor.frame_a) annotation(Line(points = {{-20, -26}, {-20, -26}, {-20, -30}, {-30, -30}, {-30, 0}, {-34, 0}, {-34, 0}}, color = {95, 95, 95}));
  connect(satelliteBody.frame_a, fixedTranslation2.frame_a) annotation(Line(points = {{14, 0}, {-20, 0}, {-20, -6}, {-20, -6}}, color = {95, 95, 95}));
  connect(fixedTranslation3.frame_b, zMotor.frame_a) annotation(Line(points = {{0, -28}, {0, -28}, {0, -42}, {8, -42}, {8, -42}}, color = {95, 95, 95}));
  connect(satelliteBody.frame_a, fixedTranslation3.frame_a) annotation(Line(points = {{14, 0}, {0, 0}, {0, 0}, {0, 0}, {0, -8}, {0, -8}}, color = {95, 95, 95}));
  connect(fixedTranslation1.frame_a, satelliteBody.frame_a) annotation(Line(points = {{0, 6}, {0, 6}, {0, -8.88178e-16}, {14, -8.88178e-16}, {14, -8.88178e-16}}, color = {95, 95, 95}));
  connect(xMotor.frame_a, fixedTranslation1.frame_b) annotation(Line(points = {{6, 40}, {-4.44089e-16, 40}, {-4.44089e-16, 26}, {-4.44089e-16, 26}}, color = {95, 95, 95}));
  xMotor.rampRate = sat3DControlBlock1.xMotorInput;
  yMotor.rampRate = sat3DControlBlock1.yMotorInput;
  zMotor.rampRate = sat3DControlBlock1.zMotorInput;
  xAxisSat = transpose(satelliteBody.frame_a.R.T) * {1, 0, 0};
  yAxisSat = transpose(satelliteBody.frame_a.R.T) * {0, 1, 0};
  zAxisSat = transpose(satelliteBody.frame_a.R.T) * {0, 0, 1};
  sat3DControlBlock1.xAxis = xAxisSat;
  sat3DControlBlock1.yAxis = yAxisSat;
  sat3DControlBlock1.zAxis = zAxisSat;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 50, Tolerance = 1e-06, Interval = 0.10101));
end Satellite;