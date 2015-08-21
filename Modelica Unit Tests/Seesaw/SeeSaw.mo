model SeeSaw
  final constant Real pi = 3.1415927;
  parameter Real ag = 9.8;
  parameter Real h = 0.2;
  // First pendulum parameters and variables
  parameter Real d1 = 0.3;
  parameter Real m1 = 0.2;
  parameter Real px1i = -d1;
  parameter Real py1i = 0;
  Real px1(start = px1i, fixed = true);
  Real py1(start = py1i, fixed = true);
  Real vx1(start = 0.0, fixed = true);
  Real vy1(start = 0.0, fixed = true);
  Real px1diff;
  Real vL1, vN1;
  // Velocities in the longitudinal and
  //normal direction to the beam
  Real ax1, ay1;
  Real aL1, aN1;
  Real fg1;
  // Gravity force on mass
  Real fL1, fN1;
  // Forces applied to mass - L, N are axes attached
  // to the beam; x, y are inertial axes
  Real fbL1, fbN1;
  // Force from beam to mass, longitudinal, normal
  Real theta1, thetaDeg1;
  // Theta is 0 on x-axis, positive counter-clockwise
  // Second pendulum parameters and variables
  parameter Real d2 = 0.4;
  parameter Real m2 = 0.3;
  parameter Real px2i = d2;
  parameter Real py2i = 0;
  Real px2(start = px2i, fixed = true);
  Real py2(start = py2i, fixed = true);
  Real vx2(start = 0.0, fixed = true);
  Real vy2(start = 0.0, fixed = true);
  Real px2diff;
  Real vL2, vN2;
  // Velocities in the longitudinal and
  //normal direction to the beam
  Real ax2, ay2;
  Real aL2, aN2;
  Real fg2;
  // Gravity force on mass
  Real fL2, fN2;
  // Forces applied to mass - L, N are axes attached
  // to the beam; x, y are inertial axes
  Real fbL2, fbN2;
  // Force from beam to mass, longitudinal, normal
  Real theta2, thetaDeg2;
  // Theta is 0 on x-axis, positive counter-clockwise
equation
  // Equations for pendulum 1
  der(px1) = vx1;
  der(py1) = vy1;
  der(vx1) = ax1;
  der(vy1) = ay1;
  theta1 = atan2(py1, px1);
  thetaDeg1 = theta1 * 180.0 / pi;
  px1diff = px1 - px1i;
  vL1 = vx1 * cos(theta1) + vy1 * sin(theta1);
  vN1 = (-vx1 * sin(theta1)) + vy1 * cos(theta1);
  fg1 = -m1 * ag;
  fN1 = fg1 * cos(theta1) + fbN1;
  fL1 = fbL1 + fg1 * sin(theta1);
  aN1 = fN1 / m1;
  aL1 = -vN1 ^ 2 / d1;
  // Yes, this is easily solved, but we'll let OMod figure it out!
  aL1 = fL1 / m1;
  ax1 = aL1 * cos(theta1) - aN1 * sin(theta1);
  ay1 = aL1 * sin(theta1) + aN1 * cos(theta1);
  // Equations for pendulum 2
  der(px2) = vx2;
  der(py2) = vy2;
  der(vx2) = ax2;
  der(vy2) = ay2;
  theta2 = atan2(py2, px2);
  thetaDeg2 = theta2 * 180.0 / pi;
  px2diff = px2 - px2i;
  vL2 = vx2 * cos(theta2) + vy2 * sin(theta2);
  vN2 = (-vx2 * sin(theta2)) + vy2 * cos(theta2);
  fg2 = -m2 * ag;
  fN2 = fg2 * cos(theta2) + fbN2;
  fL2 = fbL2 + fg2 * sin(theta2);
  aN2 = fN2 / m2;
  aL2 = -vN2 ^ 2 / d2;
  // Yes, this is easily solved, but we'll let OMod figure it out!
  aL2 = fL2 / m2;
  ax2 = aL2 * cos(theta2) - aN2 * sin(theta2);
  ay2 = aL2 * sin(theta2) + aN2 * cos(theta2);
  // Equations that join the two pendulums
  fbN1 * d1 = -fbN2 * d2;
  // Moment on beam must be zero (it's massless)
  aN1 / d1 = aN2 / d2;
  // Angular accelerations must match
  // annotation(experiment(StartTime = 0, StopTime = 5, Tolerance = 1e-6, Interval = 0.01));
end SeeSaw;