model BoomSetPointGenerator
  import Modelica.Constants;
  Real pi = Constants.pi;
  parameter Real delT = 0.01;
  Real initialPosition(start = 0, fixed = true);
  Modelica.Blocks.Interfaces.RealOutput vsetpt1 annotation(Placement(visible = true, transformation(origin = {109, 77}, extent = {{-23, -23}, {23, 23}}, rotation = 0), iconTransformation(origin = {106, 78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput psetpt1 annotation(Placement(visible = true, transformation(origin = {
109, 25}, extent = {{-23, -23}, {23, 23}}, rotation = 0), iconTransformation(origin = {106, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput vsetpt2 annotation(Placement(visible = true, transformation(origin = {112, -22}, extent = {{-24, -24}, {24, 24}}, rotation = 0), iconTransformation(origin = {104, -28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput psetpt2 annotation(Placement(visible = true, transformation(origin = {112, -68}, extent = {{-24, -24}, {24, 24}}, rotation = 0), iconTransformation(origin = {104, -64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
algorithm
  when sample(0, delT) then
    if (time > 3) then
      psetpt1 := initialPosition;
      vsetpt1 := 0.1;
      psetpt2 := psetpt1 + pi/4;
      vsetpt2 := 0.1;
      initialPosition := psetpt1 + 0.01;
    else
      psetpt2 := pi/4;
      vsetpt1 := 0.0;
      vsetpt2 := 0.0;
      psetpt1 := 0.0;
    end if;
  end when;
  annotation(Icon, Diagram);
end BoomSetPointGenerator;