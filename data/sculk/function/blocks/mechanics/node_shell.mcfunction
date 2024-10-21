function sculk:blocks/mechanics/node_shell_place
tp @s ~ ~ ~ ~15 ~
scoreboard players add @s sculk_direction 1
execute if score @s sculk_direction matches 16.. run function sculk:blocks/mechanics/node_shell_up