function Test "y = Sine(x,A,w)"
  extends Integrand;
  input Real A;
  input Real w;
algorithm
  y := A * Modelica.Math.sin(w * x);
end Test;