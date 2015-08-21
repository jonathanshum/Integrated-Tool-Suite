model TestFMU2 "from:http://scicomp.stackexchange.com/questions/7738/how-to-do-co-simulation-with-two-fmu-models
comment by: Florian Brucker
Modified by D. Auslander"
  Real result(start = 0.0);

  connector TestInputConnector
    input Real value;
    output Real value2;
  end TestInputConnector;

  TestInputConnector c;
equation
  result = c.value;
  c.value2 = 2.3;
end TestFMU2;