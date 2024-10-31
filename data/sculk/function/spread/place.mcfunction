# Sculk Vein/Vegetation
execute if block ~ ~1 ~ #sculk:vegetation_replaceable if predicate sculk:50_perc_chance run function sculk:spread/vegetation_place
execute if block ~ ~ ~ sculk if block ~ ~1 ~ #sculk:growth_replaceable if predicate sculk:vegetation_place_chance unless entity @n[tag=sculk,tag=!tendril,tag=!spike,distance=..2.5] unless entity @n[tag=sculk,tag=spike,distance=..0.8] run function sculk:spread/vegetation_place

# Warped Wood
execute if block ~ ~ ~ #logs_that_burn run setblock ~ ~ ~ warped_hyphae replace

# In Tree
execute if block ~ ~ ~ warped_hyphae run function sculk:spread/in_tree

# Crying Obsidian
execute if block ~ ~ ~ obsidian run setblock ~ ~ ~ crying_obsidian replace

# Paths
execute if block ~ ~ ~ dirt_path run setblock ~ ~1 ~ sculk_vein[down=true] keep

# SCULK
execute if block ~ ~ ~ #sculk:infectable run setblock ~ ~ ~ sculk replace

# Sculk Growth
execute if block ~ ~ ~ sculk if block ~ ~1 ~ #sculk:growth_replaceable positioned ~ ~1 ~ run function sculk:spread/growth_place

# Sculk 
execute if entity @s[tag=spawnvein,tag=corruptplant] if predicate sculk:50_perc_chance positioned ~ ~1 ~ run function sculk:spread/vegetation_place
execute if entity @s[tag=spawnvein,tag=!corruptplant] positioned ~ ~1 ~ run function sculk:spread/vegetation_place
tag @s remove spawnvein
tag @s remove corruptplant

