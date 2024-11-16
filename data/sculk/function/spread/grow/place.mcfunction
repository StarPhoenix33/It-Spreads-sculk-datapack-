# Sculk Vein
execute if predicate sculk:veins_place_chance if block ~ ~ ~ #sculk:sculk_variants unless entity @n[tag=sculk,tag=!tendril,tag=!spreader,distance=..2.5] unless entity @n[tag=sculk,tag=node,distance=..5.5,scores={node_stage=6..7}] run function sculk:spread/grow/veins_place
execute if predicate sculk:veins_place_chance if predicate sculk:50_perc_chance if block ~ ~ ~ #sculk:sculk_variants run function sculk:spread/grow/veins_remove

# Vegetation
execute if predicate sculk:50_perc_chance if block ~ ~1 ~ #sculk:vegetation_replaceable positioned ~ ~1 ~ run function sculk:spread/grow/vegetation_place
execute if predicate sculk:vegetation_place_chance if block ~ ~ ~ sculk if block ~ ~1 ~ #sculk:growth_replaceable positioned ~ ~1 ~ unless entity @n[tag=sculk,tag=!tendril,tag=!spreader,distance=..2.5] run function sculk:spread/grow/vegetation_place

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

execute if block ~ ~1 ~ snow run setblock ~ ~1 ~ air