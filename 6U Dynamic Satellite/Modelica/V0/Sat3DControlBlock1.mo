block Sat3DControlBlock
  import SI = Modelica.SIunits;
  import Vec = Modelica.Math.Vectors;
  import Modelica.Math.Matrices;
  import ControlFunctions.*;
  import Modelica.Utilities.Streams;
  import TM = Modelica.Mechanics.MultiBody.Frames.TransformationMatrices;
  // Satellite x, y, z, axes
  input Real[3] xAxis(start = {1, 0, 0}), yAxis(start = {0, 1, 0}), zAxis(start = {0, 0, 1});
  output Real xMotorRampRate(fixed = true), yMotorRampRate(fixed = true), zMotorRampRate(fixed = true);
  constant Real pi = 2 * Modelica.Math.asin(1.0);
  parameter SI.Time dt = 0.01;
  parameter Real[3] xAbs = {1, 0, 0}, yAbs = {0, 1, 0}, zAbs = {0, 0, 1};
  // Desired x, y, z, axes
  // Specified the desired attitude by axis of rotation and angle of rotation
  discrete Real[3] axisRotDes = Vec.normalize({1, 0, 0});
  discrete Real angleRotDes = -100.0 * pi / 180, sinTh = sin(angleRotDes), cosTh = cos(angleRotDes);
  discrete Real angRotPerStep(fixed = true), angRotStep(fixed = true) "Increment in angle per step; actual angle at a given step";
  discrete Real angErrorCos(fixed = true), angError(fixed = true) "Error between desired (profile) frame and actual frame";
  discrete Real xProj(fixed = true), yProj(fixed = true), zProj(fixed = true);
  discrete Real[3] xCross(fixed = true), yCross(fixed = true), zCross(fixed = true);
  parameter Real angDel = pi / 180.0 "Angular rate for profile, rad/sec";
  discrete TM.Orientation rotMatDes(each fixed = true), rotMatSatDes(each fixed = true);
  discrete TM.Orientation rotMatStep(each fixed = true);
  discrete Real[3] xAxisDes(each fixed = true), yAxisDes(each fixed = true), zAxisDes(each fixed = true);
  discrete Real[3] xAxisDesStep(each fixed = true), yAxisDesStep(each fixed = true), zAxisDesStep(each fixed = true);
  discrete Real[3] rotAxisCompSigns(each fixed = true), rotAxisStep(each fixed = true);
  discrete Real rotAngleComp(fixed = true), rotAngleCompCos(fixed = true);
  discrete Real[3] xAxis0(each fixed = true), yAxis0(each fixed = true), zAxis0(each fixed = true);
  // Cross products of actual with desired
  discrete Real np(fixed = true), ip(start = 0, fixed = true);
  // Max. increment/sec (based on max ptDiffMag of 2)
  discrete Real mAtt(fixed = true), attVal(fixed = true), attSet(fixed = true);
  discrete TM.Orientation rotMat(each fixed = true);
  parameter Real kp = 5.0e3, ki = 0.0, kd = 2.0e3;
  parameter Real loLim = -700, hiLim = 700;
  discrete Real integ(fixed = true), attPrev(fixed = true), errPrev(fixed = true);
  Boolean frst(start = true, fixed = true);
  Integer state(start = 0, fixed = true);
algorithm
  // Computation of rotation matrix from frame axes is from:
  // http://www.srl.caltech.edu/phys106/p106a00/topic7.pdf
  // also see: https://en.wikipedia.org/wiki/Rotation_matrix#Rotation_matrix_from_axis_and_angle
  // Axis and angle of rotation from rotation matrix:
  // http://www.biomedcentral.com/content/supplementary/1471-2105-11-303-s6.pdf
  // Note: some of this could have been done more easily using the eigenvalues and eigenvectors of the
  // rotation matices, but that function is not working properly in OpenModelica (as of 12/2015)
  when sample(0, dt) then
    if state == 0 then
      rotMatDes := TM.planarRotation(axisRotDes, -angleRotDes);
      xAxisDes := rotMatDes * xAbs "Desired axis orientation (full move)";
      yAxisDes := rotMatDes * yAbs;
      zAxisDes := rotMatDes * zAbs;
      xAxis0 := xAxis;
      yAxis0 := yAxis;
      zAxis0 := zAxis;
      rotMatSatDes := [xAxis0 * xAxisDes, xAxis0 * yAxisDes, xAxis0 * zAxisDes; yAxis0 * xAxisDes, yAxis0 * yAxisDes, yAxis0 * zAxisDes; zAxis0 * xAxisDes, zAxis0 * yAxisDes, zAxis0 * zAxisDes];
      rotAngleCompCos := (rotMatSatDes[1, 1] + rotMatSatDes[2, 2] + rotMatSatDes[3, 3] - 1) / 2.0;
      rotAngleComp := acos(rotAngleCompCos) "Angle of motion for full move";
      rotAxisCompSigns := Vec.normalize({(rotMatSatDes[3, 2] - rotMatSatDes[2, 3]) / 2.0, (rotMatSatDes[1, 3] - rotMatSatDes[3, 1]) / 2.0, (rotMatSatDes[2, 1] - rotMatSatDes[1, 2]) / 2.0});
      np := div(abs(rotAngleComp), angDel * dt) + 1 "Number of steps";
      angRotPerStep := rotAngleComp / np;
      ip := 0;
      state := 1;
    elseif state == 1 then
      if ip < np then
        ip := ip + 1 " First compute desired position of the frame for this step";
        angRotStep := ip * angRotPerStep "Compute rotation angle for this step";
        rotMat := TM.planarRotation(Vec.normalize(rotAxisCompSigns), -angRotStep);
        rotAxisStep := Vec.normalize({(rotMat[3, 2] - rotMat[2, 3]) / 2.0, (rotMat[1, 3] - rotMat[3, 1]) / 2.0, (rotMat[2, 1] - rotMat[1, 2]) / 2.0});
        xAxisDesStep := rotMat * xAbs;
        yAxisDesStep := rotMat * yAbs;
        zAxisDesStep := rotMat * zAbs;
      else
        xAxisDesStep := xAxisDes "End of profile; use final value";
        yAxisDesStep := yAxisDes;
        zAxisDesStep := zAxisDes;
      end if;
      rotMatStep := [xAxis * xAxisDesStep, xAxis * yAxisDesStep, xAxis * zAxisDesStep; yAxis * xAxisDesStep, yAxis * yAxisDesStep, yAxis * zAxisDesStep; zAxis * xAxisDesStep, zAxis * yAxisDesStep, zAxis * zAxisDesStep];
      angErrorCos := (rotMatStep[1, 1] + rotMatStep[2, 2] + rotMatStep[3, 3] - 1) / 2.0;
      angError := acos(angErrorCos) "Angle between desired and actual frames";
      xProj := rotAxisStep * xAxis "Projection of rotation axis onto the X Axis";
      yProj := rotAxisStep * yAxis;
      zProj := rotAxisStep * zAxis;
      xCross := cross(xAxisDesStep, xAxis);
      yCross := cross(yAxisDesStep, yAxis);
      zCross := cross(zAxisDesStep, zAxis);
      attVal := 0;
      attSet := 0;
      (mAtt, integ, attPrev, errPrev, frst) := PIDFunc(dt = dt, kp = kp, ki = ki, kd = kd, integ = integ, setpoint = attSet, lowLim = loLim, highLim = hiLim, val = attVal, prevErr = errPrev, first = frst);
    end if;
    xMotorRampRate := 100;
    yMotorRampRate := 0;
    zMotorRampRate := 0;
  end when;
  //rotAxisComp := {sqrt((rotMatSatDes[1, 1] - rotAngleCompCos) / (1.0 - rotAngleCompCos)), sqrt((rotMatSatDes[2, 2] - rotAngleCompCos) / (1.0 - rotAngleCompCos)), sqrt((rotMatSatDes[3, 3] - rotAngleCompCos) / (1.0 - rotAngleCompCos))};
  // Use Rodrigues' rotation formula to get XYZ of desired attitude
  // https://en.wikipedia.org/wiki/Rodrigues%27_rotation_formula
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-06, Interval = 0.00200803));
end Sat3DControlBlock;