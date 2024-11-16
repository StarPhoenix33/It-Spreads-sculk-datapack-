execute at @s[tag=!s_reverse] run tp @s ~ ~ ~ ~10 0
execute at @s[tag=!s_reverse] run tp @s ~ ~ ~ ~-10 0
scoreboard players remove @s sculk_direction 1

execute if score @s sculk_direction matches 1.. run function sculk:spread/tendril_turn
