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
  discrete Real angleRotDes(fixed = true, start = pi/2);
  //parameter Real angleRotDes = pi/2;
  
  discrete TM.Orientation rotMatDes(each fixed = true), rotMatSatDes(each fixed = true), rotMatDesT(each fixed = true);
  discrete Real[3] xAxisDes(each fixed = true), yAxisDes(each fixed = true), zAxisDes(each fixed = true);
  discrete Real attSet(fixed = true, start=0.0);
  //discrete Real attSet = 0.0;
  
  discrete Real mAttT(fixed = true), attValT(fixed = true);
  discrete Real integT(fixed = true), attPrevT(fixed = true), errPrevT(fixed = true);
  discrete Boolean frstT(start = true, fixed = true);
  parameter Real kpT = 10.0, kiT = 0.0, kdT = 0.0;
  
  //discrete Real mAttX(fixed = true);
  //discrete Real mAttY(fixed = true);
  //discrete Real mAttZ(fixed = true);
  
  discrete Real[3] axisRotDesT = Vec.normalize({1, 1, 1});
  parameter Real loLim = -700, hiLim = 700;
  
algorithm
  when sample(0, dt) then
      //if (time > 5.0) then
        rotMatDes := TM.planarRotation(axisRotDes, angleRotDes) "From original frame.";
        xAxisDes := rotMatDes * xAbs "Desired axis orientation (full move)";
        yAxisDes := rotMatDes * yAbs;
        zAxisDes := rotMatDes * zAbs;
        rotMatSatDes := [xAxis * xAxisDes, xAxis * yAxisDes, xAxis * zAxisDes; yAxis * xAxisDes, yAxis * yAxisDes, yAxis * zAxisDes; zAxis * xAxisDes, zAxis * yAxisDes, zAxis * zAxisDes];
        
        attValT := acos((rotMatSatDes[1, 1] + rotMatSatDes[2, 2] + rotMatSatDes[3, 3] - 1) / 2.0) "Angle of motion for full move";
        
        (mAttT, integT, attPrevT, errPrevT, frstT) := PIDFunc(dt = dt, kp = kpT, ki = kiT, kd = kdT, integ = integT, setpoint = attSet, lowLim = loLim, highLim = hiLim, val = attValT, prevErr = errPrevT, first = frstT);
        
        //axisAngleSatDesX := (rotMatSatDes[2,1]-rotMatSatDes[1,2])/sqrt((rotMatSatDes[2,1]-rotMatSatDes[1,2])^2+(rotMatSatDes[0,2]-rotMatSatDes[2,0])^2+(rotMatSatDes[1,0]-rotMatSatDes[0,1])^2);
        //axisAngleSatDesY := (rotMatSatDes[0,2]-rotMatSatDes[2,0])/sqrt((rotMatSatDes[2,1]-rotMatSatDes[1,2])^2+(rotMatSatDes[0,2]-rotMatSatDes[2,0])^2+(rotMatSatDes[1,0]-rotMatSatDes[0,1])^2);
        //axisAngleSatDesZ := (rotMatSatDes[1,0]-rotMatSatDes[0,1])/sqrt((rotMatSatDes[2,1]-rotMatSatDes[1,2])^2+(rotMatSatDes[0,2]-rotMatSatDes[2,0])^2+(rotMatSatDes[1,0]-rotMatSatDes[0,1])^2);

        axisRotDesT := {(rotMatSatDes[2,1]-rotMatSatDes[1,2])/sqrt((rotMatSatDes[2,1]-rotMatSatDes[1,2])^2+(rotMatSatDes[0,2]-rotMatSatDes[2,0])^2+(rotMatSatDes[1,0]-rotMatSatDes[0,1])^2), (rotMatSatDes[0,2]-rotMatSatDes[2,0])/sqrt((rotMatSatDes[2,1]-rotMatSatDes[1,2])^2+(rotMatSatDes[0,2]-rotMatSatDes[2,0])^2+(rotMatSatDes[1,0]-rotMatSatDes[0,1])^2), (rotMatSatDes[1,0]-rotMatSatDes[0,1])/sqrt((rotMatSatDes[2,1]-rotMatSatDes[1,2])^2+(rotMatSatDes[0,2]-rotMatSatDes[2,0])^2+(rotMatSatDes[1,0]-rotMatSatDes[0,1])^2)};
        rotMatDesT := TM.planarRotation(axisRotDesT, mAttT);
        
        xMotorInput := atan2(rotMatDesT[3,2], rotMatDesT[3,3]);
        yMotorInput := atan2(-rotMatDesT[3,1], sqrt(rotMatDesT[3,2]^2 + rotMatDesT[3,3]^2));
        zMotorInput := atan2(rotMatDesT[2,1], rotMatDesT[1,1]); 
        //mAttX := atan2(rotMatDesT[3,2], rotMatDesT[3,3]);      
        //xMotorInput := mAttX;
        //mAttY := atan2(-rotMatDesT[3,1], sqrt(rotMatDesT[3,2]^2 + rotMatDesT[3,3]^2));      
        //yMotorInput := mAttY;
        //mAttZ := atan2(rotMatDesT[2,1], rotMatDesT[1,1]);      
        //zMotorInput := mAttZ;
      //end if;
  end when;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 30, Tolerance = 1e-06, Interval = 0.00200803));
end Sat3DControlBlock;