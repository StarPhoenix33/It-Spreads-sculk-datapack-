# Sculkstuck logic
execute at @s if block ~ ~ ~ #sculk:infectable run scoreboard players set @s sculk_stuck 0
execute at @s[tag=sculkstuck] if block ~ ~ ~ #sculk:infectable run tag @s remove sculkstuck

# Steps
execute at @s[tag=!sculkstuck] if block ~ ~ ~ #sculk:infectable run scoreboard players remove @s[scores={sculk_steps=1..}] sculk_steps 1
execute at @s[tag=sculkstuck] if block ~ ~ ~ #sculk:sculk_variants if predicate sculk:sculk_step_chance_stuck run scoreboard players remove @s[scores={sculk_steps=1..}] sculk_steps 1

# Place sculk
execute at @s if block ~ ~ ~ #sculk:infectable run function sculk:spread/place
execute at @s[tag=sculkstuck] if block ~ ~ ~ #sculk:sculk_variants if predicate sculk:spread_chance_stuck run function sculk:spread/place


# Particles and Sounds
execute at @s[tag=!sculkstuck] run particle sculk_charge{roll:0} ~ ~0.6 ~ 0.3 0.1 0.3 0 4 force @a
execute at @s[tag=sculkstuck] run particle sculk_charge{roll:0} ~ ~0.55 ~ 0.2 0.1 0.2 0 2 force @a
execute at @s[tag=!sculkstuck] run playsound block.sculk.spread block @a[distance=..100] ~ ~ ~ 1 0.8
execute at @s[tag=sculkstuck] run playsound block.sculk.charge block @a[distance=..100] ~ ~ ~ 0.3 1