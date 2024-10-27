# Sculk veins detection
execute if block ~ ~1 ~ #sculk:sculk_vegetation_replaceable run tag @s add spawnvein
execute if block ~ ~1 ~ #sculk:sculk_vegetation_replaceable run tag @s add corruptplant
execute if block ~ ~ ~ sculk positioned ~ ~1 ~ if block ~ ~ ~ #sculk:growth_replaceable if predicate sculk:vegetation_place_chance unless entity @n[tag=sculk,tag=!tendril,distance=..2.5] run tag @s add spawnvein
execute if entity @s[tag=spawnvein] run setblock ~ ~1 ~ air

# Warped Wood
execute if block ~ ~ ~ #logs_that_burn run setblock ~ ~ ~ warped_hyphae replace

# Destroy Leaves
execute if block ~ ~ ~ warped_hyphae run function sculk:spread/destroy_leaves

# Tree Extension
execute if entity @s[tag=sculkstuck] if block ~ ~ ~ warped_hyphae if predicate sculk:tree_extension_chance positioned ^ ^ ^1 if block ~ ~ ~ #replaceable run function sculk:spread/tree_extension
execute if entity @s[tag=sculkstuck] if block ~ ~ ~ warped_hyphae if predicate sculk:tree_extension_chance positioned ^ ^1 ^1 if block ~ ~ ~ #replaceable run function sculk:spread/tree_extension

# Crying Obsidian
execute if block ~ ~ ~ obsidian run setblock ~ ~ ~ crying_obsidian replace

# Paths
execute if block ~ ~ ~ dirt_path run setblock ~ ~1 ~ sculk_vein[down=true] keep

# Sculk
execute if block ~ ~ ~ #sculk:infectable run setblock ~ ~ ~ sculk replace

# Sculk Node
execute if entity @s[tag=nodetendril] if score @s sculk_steps matches 0 if predicate sculk:node_chance if block ~ ~ ~ sculk if block ~ ~1 ~ #sculk:growth_replaceable positioned ~ ~1 ~ unless entity @n[tag=sculk,tag=node,distance=..50] run function sculk:blocks/place/node

# Sculk Growth
execute if block ~ ~ ~ sculk if block ~ ~1 ~ #sculk:growth_replaceable positioned ~ ~1 ~ run function sculk:spread/growth_place

# Sculk Vein/Vegetation
execute if entity @s[tag=spawnvein,tag=corruptplant] if predicate sculk:50_perc_chance positioned ~ ~1 ~ run function sculk:spread/vegetation_place
execute if entity @s[tag=spawnvein,tag=!corruptplant] positioned ~ ~1 ~ run function sculk:spread/vegetation_place
tag @s remove spawnvein
tag @s remove corruptplant

