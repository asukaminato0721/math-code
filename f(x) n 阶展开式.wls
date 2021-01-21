(*将f[x]改为你需要的函数即可*)
With[{f = BesselJ[1, #] &}, 
 Manipulate[
  Plot[Evaluate@{Normal@Series[f[x], {x, 0, t}], f[x]}, {x, -20, 20}, 
   PlotRange -> {Automatic, {-1, 1}}, 
   PlotLegends -> "Expressions"], {t, 0, 20, 1}]
   ]