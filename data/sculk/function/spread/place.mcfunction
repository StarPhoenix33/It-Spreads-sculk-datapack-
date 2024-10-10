# Sculk veins detection
execute if block ~ ~1 ~ #sculk:sculk_veins_replaceable run tag @s add spawnvein
execute if block ~ ~1 ~ #sculk:sculk_veins_replaceable run setblock ~ ~1 ~ air

# Warped Wood
execute if block ~ ~ ~ #logs_that_burn run setblock ~ ~ ~ warped_hyphae replace

# Sculk Leaves
execute if block ~ ~ ~ #leaves run setblock ~ ~ ~ warped_wart_block replace

# Sculk
execute if block ~ ~ ~ #sculk:infectable run setblock ~ ~ ~ sculk replace

# Sculk Veins
execute if entity @s[tag=spawnvein] run setblock ~ ~1 ~ sculk_vein[down=true] keep
tag @s remove spawnvein

# Sculk Sensor
execute if predicate sculk:sensor_chance if block ~ ~ ~ sculk if block ~ ~1 ~ #sculk:growth_replaceable run setblock ~ ~1 ~ sculk_sensor replace


# Sculk Shrieker
execute if predicate sculk:shrieker_chance if block ~ ~ ~ sculk if block ~ ~1 ~ #sculk:growth_replaceable align xyz positioned 0.5 0.5 0.5 run function sculk:blocks/place/shrieker