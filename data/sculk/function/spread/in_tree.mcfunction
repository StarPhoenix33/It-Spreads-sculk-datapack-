function sculk:spread/destroy_leaves
execute unless entity @n[tag=sculk,tag=node,distance=..2.5] if block ~ ~ ~ warped_hyphae if block ~ ~-1 ~ sculk run setblock ~ ~-1 ~ warped_hyphae replace
execute if predicate sculk:sweep_swap_chance run tag @s[tag=!sculkstuck,tag=!invertedsweep] add invertedsweep

# Tree Extension
execute if entity @s[tag=sculkstuck] if predicate sculk:tree_extension_chance positioned ^ ^ ^1 if block ~ ~ ~ #sculk:tree_extension_replaceable run function sculk:spread/tree_extension
execute if entity @s[tag=sculkstuck] if predicate sculk:tree_extension_chance positioned ^ ^1 ^ if block ~ ~ ~ #sculk:tree_extension_replaceable run function sculk:spread/tree_extension
execute if entity @s[tag=sculkstuck] if predicate sculk:tree_extension_chance positioned ^ ^1 ^1 if block ~ ~ ~ #sculk:tree_extension_replaceable run function sculk:spread/tree_extension