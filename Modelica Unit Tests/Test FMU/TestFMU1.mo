model TestFMU1 "from:http://scicomp.stackexchange.com/questions/7738/how-to-do-co-simulation-with-two-fmu-models
comment by: Florian Brucker
Modified by D. Auslander"
  parameter Real p = 2.0;
  Real x(start = 1.0, fixed = true);
  Real y(start = 1.0, fixed = true);

  connector TestOutputConnector
    output Real value;
    input Real value2;
  end TestOutputConnector;

  TestOutputConnector c;
equation
  der(x) = -p * x;
  c.value = x;
  y = c.value2;
end TestFMU1;