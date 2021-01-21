<<JavaGraphics`
Table[Line[{
    {-Sqrt[2] (Cos[3 t] - Cos[6 t]), Sqrt[2] (Cos[3 t] + Cos[6 t])},
    {-Sqrt[2] (Sin[2 t + Pi/8] - Sin[t + Pi/3]), 
     Sqrt[2] (Sin[2 t + Pi/8] + Sin[t + Pi/3])}
    }],
  {t, 0, 4, 0.01}] // Graphics // Show
Input[]
(* 把 4 改成可变的数，用动画控制 *)