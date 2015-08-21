package Funcs
	function FunctionTest1
	  input Real x;
	  output Real y;
	protected
	  Real q = 3.2;
	algorithm
	  y := x * q;
	  q := q * 2;
	  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
	end FunctionTest1;
end Funcs;