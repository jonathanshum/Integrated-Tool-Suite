model pendulum
  final constant Real pi = 3.1415927;
  parameter Real d = 1.5;
  parameter Real m = 0.3;
  Real px(start = d, fixed = true);
  Real py(start = 0, fixed = true);
  Real vx(start = 0.0, fixed = true);
  Real vy(start = 0.0, fixed = true);
  Real vL,vN;
  // Velocities in the longitudinal and
  //normal direction to the beam
  Real ax,ay;
  Real aL,aN;
  parameter Real ag = 9.8;
  Real fg;
  // Gravity force on mass
  Real fL,fN;
  // Forces applied to mass - L, N are axes attached
  // to the beam; x, y are inertial axes
  Real fbL;
  // Force from beam to mass, longitudinal
  Real theta,thetaDeg;
  // Theta is 0 on x-axis, positive counter-clockwise
equation
  der(px) = vx;
  der(py) = vy;
  der(vx) = ax;
  der(vy) = ay;
  fg = -m * ag;
  theta = atan2(py, px);
  thetaDeg = (theta * 180.0) / pi;
  vL = vx * cos(theta) + vy * sin(theta);
  vN = -vx * sin(theta) + vy * cos(theta);
  fg = -m * ag;
  fN = fg * cos(theta);
  fL = fbL + fg * sin(theta);
  aN = fN / m;
  aL = -vN ^ 2 / d;
  aL = fL / m;
  ax = aL * cos(theta) - aN * sin(theta);
  ay = aL * sin(theta) + aN * cos(theta);
end pendulum;

