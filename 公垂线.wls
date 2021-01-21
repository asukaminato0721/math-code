Clear["`*"](*计算公垂线*)
<<JavaGraphics`
(*红色是公垂线*)
l1 = {{1, 3, 3}, {1, 1, 2}}; (*经过点,方向向量*)
l2 = {{3, 3, 3}, {3,3, 3}}; (*经过点,方向向量*)
l3 = Cross[l1[[2]], l2[[2]]];
l13 = Cross[l1[[2]], l3];(*平面1的方向向量*)
l23 = Cross[l2[[2]], l3];(*平面2的方向向量*)


lie1 = Values@FindInstance[
  {l13.({x,y,z} - (l1//First)) == 0, l23.({x,y,z} - (l2//First)) == 0},
  {x, y, z}, Reals, 2];(*平面交*)
(* <<JavaGraphics` 导致 Show[] 只能绘制出第一个图，在 Notebook 端可改用 Show@@ *)
Show/@ {ParametricPlot3D[l1//Transpose // #.{1, t} &, {t, -10, 10}, PlotStyle -> Green],
 Graphics3D[{Blue, Thick, InfiniteLine[{l2[[1]], Total@l2}]}],
 Graphics3D[{Red, Thick, InfiniteLine[lie1]}]}
 
Input[]
