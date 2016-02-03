block Sat3DControlBlock3
  import SI = Modelica.SIunits;
  import Vec = Modelica.Math.Vectors;
  import Modelica.Math.Matrices;
  import ControlFunctions.*;
  import Modelica.Utilities.Streams;
  import Modelica.Constants;
  import TM = Modelica.Mechanics.MultiBody.Frames.TransformationMatrices;
  // Satellite x, y, z, axes
  input Real[3] xAxis(start = {1, 0, 0}), yAxis(start = {0, 1, 0}), zAxis(start = {0, 0, 1});
  output Real xMotorRampRate(fixed = true), yMotorRampRate(fixed = true), zMotorRampRate(fixed = true);
  constant Real pi = Constants.pi;
  parameter SI.Time dt = 0.01;
  parameter Real[3] xAbs = {1, 0, 0}, yAbs = {0, 1, 0}, zAbs = {0, 0, 1};
  discrete Real[3] axisRotDes = Vec.normalize({1, 0, 0});
  discrete Real angleRotDes = -100.0 * pi / 180, sinTh = sin(angleRotDes), cosTh = cos(angleRotDes);
  discrete TM.Orientation rotMatDes(each fixed = true), rotMatSatDes(each fixed = true);
  discrete Real[3] xAxisDes(each fixed = true), yAxisDes(each fixed = true), zAxisDes(each fixed = true);
  discrete Real[3] xAxis0(each fixed = true), yAxis0(each fixed = true), zAxis0(each fixed = true);
  discrete Real mAtt(fixed = true), attVal(fixed = true), attSet(fixed = true);
  discrete TM.Orientation rotMat(each fixed = true);
  parameter Real kp = 5.0e3, ki = 0.0, kd = 0.0;
  parameter Real loLim = -700, hiLim = 700;
  discrete Real integ(fixed = true), attPrev(fixed = true), errPrev(fixed = true);
  Boolean frst(start = true, fixed = true);
algorithm
  when sample(0, dt) then
      rotMatDes := TM.planarRotation(axisRotDes, -angleRotDes);
      xAxisDes := rotMatDes * xAbs "Desired axis orientation (full move)";
      yAxisDes := rotMatDes * yAbs;
      zAxisDes := rotMatDes * zAbs;
      xAxis0 := xAxis;
      yAxis0 := yAxis;
      zAxis0 := zAxis;
      rotMatSatDes := [xAxis0 * xAxisDes, xAxis0 * yAxisDes, xAxis0 * zAxisDes; yAxis0 * xAxisDes, yAxis0 * yAxisDes, yAxis0 * zAxisDes; zAxis0 * xAxisDes, zAxis0 * yAxisDes, zAxis0 * zAxisDes];
      attSet := 0;
      attVal := atan(rotMatSatDes[2,1]/rotMatSatDes[2,2]);      
      (mAtt, integ, attPrev, errPrev, frst) := PIDFunc(dt = dt, kp = kp, ki = ki, kd = kd, integ = integ, setpoint = attSet, lowLim = loLim, highLim = hiLim, val = attVal, prevErr = errPrev, first = frst);
    xMotorRampRate := mAtt;
    yMotorRampRate := 0;
    zMotorRampRate := 0;
  end when;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-06, Interval = 0.00200803));
end Sat3DControlBlock3;