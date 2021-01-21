(*长度1~10的火柴棒，任选3根，能组成三角形的概率
任选6根，能组成两个三角形的概率
显然第二问的解是由第一问的解拼起来的，所以只要找有多少对∩=空集的*)
list = Union[Sort /@ Permutations[Range@10, {3}]
];
list1 = Select[list, #[[1]] + #[[2]] > #[[3]] &](*第一问的所有解*)
list2 = Select[Permutations[list1, {2}], 
   ContainsNone[#[[1]], #[[2]]] &](*符合条件的第一问的所有解*);
Union[Sort /@ Partition[Flatten[list2], 6]
]//Print
(*或者写成Union[Sort/@Flatten[list,{{1},{2,3}}]]*)