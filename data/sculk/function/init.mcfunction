# Sculk growth tendril
execute as @s[tag=tendril] run tag @s add sculkstuck
execute as @s[tag=tendril] run tag @s add burrow
execute store result score @s[tag=tendril] sculk_steps run random value 10..30
scoreboard players set @s[tag=tendril] sculk_stuck 0
scoreboard players set @s[tag=tendril] sculk_timer 120
execute store result score @s[tag=tendril] sculk_direction run random value 1..8
execute at @s[tag=tendril] run function sculk:spread/init_direction
execute at @s[tag=tendril] if predicate sculk:50_perc_chance run tag @s add invertedsweep

execute at @s align xyz run tp @s ~0.5 ~0.5 ~0.5
tag @s add s_init