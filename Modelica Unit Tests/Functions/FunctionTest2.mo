model FunctionTest2
  Real yy;
  Real zz;
algorithm
  yy := Funcs.FunctionTest1(x = 2.3);
  zz := Funcs.FunctionTest1(x = 2.3);
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end FunctionTest2;