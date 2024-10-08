tp @s ~ ~ ~ ~45 0 
scoreboard players remove @s sculk_direction 1
execute at @s[scores={sculk_direction=1..}] run function sculk:spread/turn