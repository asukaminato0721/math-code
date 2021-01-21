func = {63, 76, 71, 50, 63, 85, 77, 39, 92, 74, 89}.Array[x, 11];
cons = {Total@Array[x, 11] == 2,(*这里能看懂*)
  Total@# <= 1 & /@ 
   Map[x, {{1, 2}, {1, 3, 4}, {2, 3, 5}, {4, 5, 7, 8, 9}, {6, 7, 
      10}, {8, 10, 11}, {9, 11}}, {2}](*利用代码格式相同*),
  Array[x, 11] >= 0
  }
Maximize[func, cons, Array[x, 11], Integers] // AbsoluteTiming
