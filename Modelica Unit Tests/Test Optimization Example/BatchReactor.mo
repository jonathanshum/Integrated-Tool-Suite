optimization BatchReactor(objective=-x2(finalTime), startTime = 0, finalTime =1)
  Real x1(start =1, fixed=true, min=0, max=1);
  Real x2(start =0, fixed=true, min=0, max=1);
  input Real u(min=0, max=5);
equation
  der(x1) = -(u+u^2/2)*x1;
  der(x2) = u*x1;
end BatchReactor;