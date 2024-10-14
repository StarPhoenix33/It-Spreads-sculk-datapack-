# Sculk growth tendril
execute as @s[tag=sculkgrowth] run tag @s add sculkstuck
execute store result score @s[tag=sculkgrowth] sculk_steps run random value 8..24
scoreboard players set @s[tag=sculkgrowth] sculk_stuck 0
execute store result score @s[tag=sculkgrowth] sculk_direction run random value 1..8
execute at @s[tag=sculkgrowth] run function sculk:spread/init_direction

execute at @s align xyz run tp @s ~0.5 ~0.5 ~0.5
tag @s add s_init