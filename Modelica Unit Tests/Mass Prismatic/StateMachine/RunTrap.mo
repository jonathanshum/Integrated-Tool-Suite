function RunTrap
  input Real t0, t, p0, pf, t1, t2, tMove, acc, decel, vCruise;
  output Real pSet, vSet;
  output Boolean done;
protected
  Real tr;
algorithm
  tr := t - t0;
  done := false;
  if tr < t1 then
    vSet := acc * tr;
    pSet := p0 + 0.5 * vSet * tr;
  elseif tr > t1 and tr < t2 then
    vSet := vCruise;
    pSet := p0 + 0.5 * vCruise * t1 + vCruise * (tr - t1);
  elseif tr > t2 and tr < tMove then
    vSet := vCruise + decel * (tr - t2);
    pSet := p0 + 0.5 * vCruise * t1 + vCruise * (t2 - t1) + 0.5 * (vCruise + vSet) * (tr - t2);
  elseif t > tMove then
    vSet := 0.0;
    pSet := pf;
    done := true;
  end if;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end RunTrap;