# Sculk veins detection
execute if block ~ ~1 ~ #sculk:sculk_veins_replaceable run tag @s add spawnvein
execute if block ~ ~ ~ sculk if block ~ ~1 ~ #replaceable if predicate sculk:spread_chance run tag @s add spawnvein
execute if block ~ ~1 ~ #sculk:sculk_veins_replaceable run setblock ~ ~1 ~ air

# Warped Wood
execute if block ~ ~ ~ #logs_that_burn run setblock ~ ~ ~ warped_hyphae replace

# Destroy Leaves
execute if block ~ ~ ~ warped_hyphae run function sculk:spread/destroy_leaves

# Tree Extension
execute if entity @s[tag=sculkstuck] if block ~ ~ ~ warped_hyphae if predicate sculk:tree_extension_chance positioned ^ ^ ^1 if block ~ ~ ~ #replaceable run function sculk:spread/tree_extension
execute if entity @s[tag=sculkstuck] if block ~ ~ ~ warped_hyphae if predicate sculk:tree_extension_chance positioned ^ ^1 ^1 if block ~ ~ ~ #replaceable run function sculk:spread/tree_extension

# Sculk
execute if block ~ ~ ~ #sculk:infectable run setblock ~ ~ ~ sculk replace

# Sculk Sensor
execute if predicate sculk:sensor_chance if block ~ ~ ~ sculk if block ~ ~1 ~ #sculk:growth_replaceable positioned ~ ~1 ~ unless entity @n[tag=sculk,tag=!tendril,distance=..2.5] run function sculk:blocks/place/sensor


# Sculk Shrieker
execute if predicate sculk:shrieker_chance if block ~ ~ ~ sculk if block ~ ~1 ~ #sculk:growth_replaceable positioned ~ ~1 ~ unless entity @n[tag=sculk,tag=shrieker,distance=..5] run function sculk:blocks/place/shrieker

# Sculk Vein
execute if entity @s[tag=spawnvein] if block ~ ~1 ~ air run setblock ~ ~1 ~ sculk_vein[down=true] keep
execute if entity @s[tag=spawnvein] if predicate sculk:spread_chance run fill ~ ~1 ~ ~ ~1 ~ twisting_vines_plant replace sculk_vein
tag @s remove spawnvein