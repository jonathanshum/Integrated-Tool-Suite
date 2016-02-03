block Sat3DControlBlock
  import SI = Modelica.SIunits;
  import Vec = Modelica.Math.Vectors;
  import Sqrt = Modelica.Math.Sqrt;
  import Modelica.Math.Matrices;
  import ControlFunctions.*;
  import Modelica.Utilities.Streams;
  import Modelica.Constants;
  import TM = Modelica.Mechanics.MultiBody.Frames.TransformationMatrices;
  // Satellite x, y, z, axes
  input Real[3] xAxis(start = {1, 0, 0}), yAxis(start = {0, 1, 0}), zAxis(start = {0, 0, 1});
  output Real xMotorInput(fixed = true), yMotorInput(fixed = true), zMotorInput(fixed = true);
  constant Real pi = Constants.pi;
  parameter SI.Time dt = 0.01;
  parameter Real[3] xAbs = {1, 0, 0}, yAbs = {0, 1, 0}, zAbs = {0, 0, 1};
  discrete Real[3] axisRotDes = Vec.normalize({1, 1, 1});
  discrete Real angleRotDes = 0;
  discrete TM.Orientation rotMatDes(each fixed = true), rotMatSatDes(each fixed = true);
  discrete Real[3] xAxisDes(each fixed = true), yAxisDes(each fixed = true), zAxisDes(each fixed = true);
  discrete Real attSet(fixed = true);
  discrete Real mAttX(fixed = true), attValX(fixed = true);
  discrete Real integX(fixed = true), attPrevX(fixed = true), errPrevX(fixed = true);
  Boolean frstX(start = true, fixed = true);
  parameter Real kpX = 10.0, kiX = 0.0, kdX = 0.0;
  discrete Real mAttY(fixed = true), attValY(fixed = true);
  discrete Real integY(fixed = true), attPrevY(fixed = true), errPrevY(fixed = true);
  Boolean frstY(start = true, fixed = true);
  parameter Real kpY = 10.0, kiY = 0.0, kdY = 0.0;
  discrete Real mAttZ(fixed = true), attValZ(fixed = true);
  discrete Real integZ(fixed = true), attPrevZ(fixed = true), errPrevZ(fixed = true);
  Boolean frstZ(start = true, fixed = true);
  parameter Real kpZ = 10.0, kiZ = 0.0, kdZ = 0.0;
  parameter Real loLim = -700, hiLim = 700;
  
algorithm
  when sample(0, dt) then
      //if (time > 5.0) then
        rotMatDes := TM.planarRotation(axisRotDes, angleRotDes) "From original frame.";
        xAxisDes := rotMatDes * xAbs "Desired axis orientation (full move)";
        yAxisDes := rotMatDes * yAbs;
        zAxisDes := rotMatDes * zAbs;
        rotMatSatDes := [xAxis * xAxisDes, xAxis * yAxisDes, xAxis * zAxisDes; yAxis * xAxisDes, yAxis * yAxisDes, yAxis * zAxisDes; zAxis * xAxisDes, zAxis * yAxisDes, zAxis * zAxisDes];
        attSet := 0;
        attValX := atan2(rotMatSatDes[3,2],rotMatSatDes[3,3]);      
        (mAttX, integX, attPrevX, errPrevX, frstX) := PIDFunc(dt = dt, kp = kpX, ki = kiX, kd = kdX, integ = integX, setpoint = attSet, lowLim = loLim, highLim = hiLim, val = attValX, prevErr = errPrevX, first = frstX);
        xMotorInput := mAttX;
        
        attValY := atan2(-rotMatSatDes[3,1], sqrt(rotMatSatDes[3,2]^2 + rotMatDes[3,3]^2));      
        (mAttY, integY, attPrevY, errPrevY, frstY) := PIDFunc(dt = dt, kp = kpY, ki = kiY, kd = kdY, integ = integY, setpoint = attSet, lowLim = loLim, highLim = hiLim, val = attValY, prevErr = errPrevY, first = frstY);
        yMotorInput := mAttY;
        
        attValZ := atan2(rotMatSatDes[2,1],rotMatSatDes[1,1]);      
        (mAttZ, integZ, attPrevZ, errPrevZ, frstZ) := PIDFunc(dt = dt, kp = kpZ, ki = kiZ, kd = kdZ, integ = integZ, setpoint = attSet, lowLim = loLim, highLim = hiLim, val = attValZ, prevErr = errPrevZ, first = frstZ);
        zMotorInput := mAttZ;
      //end if;
  end when;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 30, Tolerance = 1e-06, Interval = 0.00200803));
end Sat3DControlBlock;