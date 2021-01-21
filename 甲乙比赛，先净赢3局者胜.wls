(*我的代码*)
With[{situ = Tuples[{0, 1}, 9]},
judge::usage="显然1，1，1结束战斗3，3 ，4局无法判断，5局赢4，6无法，7赢5";
judge[list_List] := Or[Total@list[[;; 3]] == 3, Total@list[[;; 5]] == 4, 
    Total@list[[;; 7]] == 5, Total@list == 6];
( Count[situ,_?judge]- 1)/512
]//AbsoluteTiming//Print
(* 排除先输3场，再赢6场，而且不可能混在后面，因为比分会持平 *)

 (*另一个老师的代码*)
Block[{bf = {{0, 0}}, bifen = 0},
Do[bf = Join[# + {1, 0} & /@ bf, # + {0, 1} & /@ bf];
  bifen = Length@Select[bf, Subtract @@ # == 3 &] + 2*bifen;
  bf = Select[bf, Abs[Subtract @@ #] != 3 &], 9];
bifen/(Length[bf] + 2*bifen)]//AbsoluteTiming //Print