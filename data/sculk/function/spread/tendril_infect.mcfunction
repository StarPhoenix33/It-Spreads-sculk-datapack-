# Steps
execute if block ~ ~ ~ #sculk:infectable run scoreboard players remove @s[scores={sculk_steps=1..}] sculk_steps 1
execute at @s[tag=sculkstuck] if block ~ ~ ~ #sculk:sculk_variants if predicate sculk:sculk_step_chance_stuck run scoreboard players remove @s[scores={sculk_steps=1..}] sculk_steps 1

# Add Sculk Mass
execute if block ~ ~ ~ #sculk:infectable run function sculk:spread/node_infection_report with entity @s data.node
execute if block ~ ~ ~ #sculk:infectable run scoreboard players add .mass HIVEMIND 1


# Sculkstuck logic
execute if block ~ ~ ~ #sculk:infectable run scoreboard players set @s sculk_stuck 0
execute at @s[tag=sculkstuck] if block ~ ~ ~ #sculk:infectable run tag @s remove sculkstuck

# Place sculk
execute if block ~ ~ ~ #sculk:infectable run function sculk:spread/grow/place
execute at @s[tag=sculkstuck] if predicate sculk:33_perc_chance if block ~ ~ ~ #sculk:sculk_variants unless entity @n[tag=sculk,tag=melt,distance=..0.1] run function sculk:spread/grow/place
execute if block ~ ~ ~ #sculk:tendril_travel_through run function sculk:spread/grow/veins_place_outer

# Particles and Sounds
particle sculk_charge{roll:0} ~ ~0.575 ~ 0.3 0.03 0.3 0 3 normal @a
particle sculk_charge{roll:3.1415926595897932384626433} ~ ~-0.575 ~ 0.3 0.03 0.3 0 2 normal @a
execute at @s[tag=!sculkstuck] run playsound block.sculk.spread block @a[distance=..100] ~ ~ ~ 1 0.8
execute at @s[tag=sculkstuck] run playsound block.sculk.charge block @a[distance=..8] ~ ~ ~ 0.2 1