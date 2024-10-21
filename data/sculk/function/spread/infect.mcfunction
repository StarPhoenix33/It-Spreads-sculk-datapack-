# Steps
execute if block ~ ~ ~ #sculk:infectable run scoreboard players remove @s[scores={sculk_steps=1..}] sculk_steps 1
execute at @s[tag=sculkstuck] if block ~ ~ ~ #sculk:sculk_variants if predicate sculk:sculk_step_chance_stuck run scoreboard players remove @s[scores={sculk_steps=1..}] sculk_steps 1

# Place sculk
execute if block ~ ~ ~ #sculk:infectable run function sculk:spread/place
execute at @s[tag=sculkstuck] if block ~ ~ ~ #sculk:sculk_variants if predicate sculk:place_attept_chance_stuck run function sculk:spread/place

# Sculkstuck logic
execute if block ~ ~ ~ #sculk:infectable run scoreboard players set @s sculk_stuck 0
execute at @s[tag=sculkstuck] if block ~ ~ ~ #sculk:infectable run tag @s remove sculkstuck

# Particles and Sounds
execute at @s run particle sculk_charge{roll:0} ~ ~0.6 ~ 0.3 0.1 0.3 0 3 force @a
execute at @s run particle sculk_charge{roll:3.1415926595897932384626433} ~ ~-0.6 ~ 0.3 0.1 0.3 0 3 force @a
execute at @s[tag=!sculkstuck] run playsound block.sculk.spread block @a[distance=..100] ~ ~ ~ 1 0.8
execute at @s[tag=sculkstuck] run playsound block.sculk.charge block @a[distance=..100] ~ ~ ~ 0.3 1