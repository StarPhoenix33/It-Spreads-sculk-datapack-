# Sculk Vein/Vegetation
execute if block ~ ~1 ~ #sculk:vegetation_replaceable positioned ~ ~1 ~ run function sculk:spread/grow/vegetation_place
execute if predicate sculk:vegetation_place_chance if block ~ ~ ~ sculk if block ~ ~1 ~ #sculk:growth_replaceable positioned ~ ~1 ~ unless entity @n[tag=sculk,tag=!tendril,tag=!spike,distance=..2.5] run function sculk:spread/grow/vegetation_place

# Warped Wood
execute if block ~ ~ ~ #logs_that_burn run setblock ~ ~ ~ warped_hyphae replace
execute if block ~ ~ ~ mangrove_roots run setblock ~ ~ ~ warped_hyphae replace

# In Tree
execute if block ~ ~ ~ warped_hyphae run function sculk:spread/grow/in_tree

# Crying Obsidian
execute if block ~ ~ ~ obsidian run setblock ~ ~ ~ crying_obsidian replace

# Paths
execute if block ~ ~ ~ dirt_path run setblock ~ ~1 ~ sculk_vein[down=true] keep

# SCULK
execute if block ~ ~ ~ #sculk:infectable run setblock ~ ~ ~ sculk replace

# Sculk Growth
execute if block ~ ~ ~ sculk if block ~ ~1 ~ #sculk:growth_replaceable positioned ~ ~1 ~ run function sculk:spread/grow/growth_place