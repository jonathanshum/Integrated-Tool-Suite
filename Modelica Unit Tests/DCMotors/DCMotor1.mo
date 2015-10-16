model DCMotor1
  // Armature current
  Real i(start = 0);
  Real i_dot(start = 0);
  // Angular position
  Real theta(start = 0);
  // Angular velocity
  Real theta_dot(start = 0);
  // Voltage
  parameter Real V = 1;
  // Motor torque constant & Back EMF constant
  parameter Real K = 1;
  // Electric resistance
  parameter Real R = 1;
  // Rotor inertia [kg.m^2]
  parameter Real J = 1;
  // Motor viscous friction constant [N.m.s]
  parameter Real b = 1;
  // Electric inductance [H]
  parameter Real L = 0.5;
equation
  der(theta) = theta_dot;
  der(theta_dot) = b / J * i - b / J * theta_dot;
  der(i) = i_dot;
  der(i_dot) = 1 / L * ((-R * i) + V - b * i_dot);
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end DCMotor1;