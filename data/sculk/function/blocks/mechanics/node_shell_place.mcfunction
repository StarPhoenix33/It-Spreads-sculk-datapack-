# Layer 3
execute if score @s node_stage matches 6.. positioned ^ ^ ^2.6 if predicate sculk:50_perc_chance if block ~ ~ ~ #sculk:node_shell_replaceable run function sculk:blocks/mechanics/shell_layer_3

# Layer 2
execute if score @s node_stage matches 4.. positioned ^ ^ ^1.7 if predicate sculk:50_perc_chance if block ~ ~ ~ #sculk:node_shell_replaceable run function sculk:blocks/mechanics/shell_layer_2

# Layer 1
execute if score @s node_stage matches 2.. positioned ^ ^ ^0.55 if predicate sculk:50_perc_chance if block ~ ~ ~ #sculk:node_shell_replaceable run function sculk:blocks/mechanics/shell_layer_1

