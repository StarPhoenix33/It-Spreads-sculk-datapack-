function sculk:spread/destroy_leaves
execute if block ~ ~ ~ warped_hyphae if block ~ ~-1 ~ sculk run setblock ~ ~-1 ~ warped_hyphae replace

# Tree Extension
execute if entity @s[tag=sculkstuck] if predicate sculk:tree_extension_chance positioned ^ ^ ^1 if block ~ ~ ~ #replaceable run function sculk:spread/tree_extension
execute if entity @s[tag=sculkstuck] if predicate sculk:tree_extension_chance positioned ^ ^1 ^ if block ~ ~ ~ #replaceable run function sculk:spread/tree_extension
execute if entity @s[tag=sculkstuck] if predicate sculk:tree_extension_chance positioned ^ ^1 ^1 if block ~ ~ ~ #replaceable run function sculk:spread/tree_extension