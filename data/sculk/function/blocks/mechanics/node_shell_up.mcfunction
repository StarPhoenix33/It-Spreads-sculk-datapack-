tp @s ~ ~ ~ ~ ~-15

execute at @s store result score @s temp run data get entity @s Rotation[1]
execute at @s[scores={temp=-90}] run function sculk:blocks/mechanics/node_shell_place
execute at @s[scores={temp=-90}] run tp @s ~ ~ ~ ~ 90

scoreboard players set @s sculk_direction 0