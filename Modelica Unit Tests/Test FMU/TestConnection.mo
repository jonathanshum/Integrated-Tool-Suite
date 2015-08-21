model TestConnection
  TestFMU1 OutputFMU;
  TestFMU2 InputFMU;
equation 
  connect(OutputFMU.c.value, InputFMU.c.value);
end TestConnection;

model TestFMU1
  parameter Real p = 1.0;
  connector TestOutputConnector
    output Real value;
  end TestOutputConnector;
  TestOutputConnector c;
equation 
  c.value = p;
end TestFMU1;

model TestFMU2
  Real result;
  connector TestInputConnector
    input Real value;
  end TestInputConnector;
  TestInputConnector c;
equation 
  result = c.value;
end TestFMU2;
