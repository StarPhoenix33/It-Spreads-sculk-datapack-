# Sculk growth tendril
execute store result score @s[tag=sculkgrowth] sculk_steps run random value 10..30
scoreboard players set @s[tag=sculkgrowth] sculk_stuck 0


execute align xyz run tp @s ~0.5 ~0.5 ~0.5
tag @s add s_init