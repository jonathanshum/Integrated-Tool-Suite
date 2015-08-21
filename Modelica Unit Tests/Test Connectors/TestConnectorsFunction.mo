function TestConnectorsFunction
  extends Modelica.Icons.Function;
  input Real x "x";
  input Real y "y";
  output Real z "z";
algorithm
  z := x + y;
end TestConnectorsFunction;