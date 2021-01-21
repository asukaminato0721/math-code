<<JavaGraphics`
p = x^2 + y^2; R = 2;
Show[ParametricPlot3D[{x - p/(p + 4 R^2)*x, y - p/(p + 4 R^2)*y, (
   2 p R)/(p + 4 R^2)}, {x, -5, 5}, {y, -5, 5}, PlotRange -> All, 
  MeshShading -> {{Automatic, None}, {None, Automatic}}], 
Plot3D[0, {x, -5, 5}, {y, -5, 5}, 
  MeshShading -> {{Automatic, None}, {None, Automatic}}], 
 ListPointPlot3D[{{0, 0, 2 R}}]
 ]
Input[]