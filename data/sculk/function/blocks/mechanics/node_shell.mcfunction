function sculk:blocks/mechanics/node_shell_place
execute if score @s sculk_timer matches 100..120 rotated ~180 ~ run function sculk:blocks/mechanics/node_shell_place

tp @s ~ ~ ~ ~15 ~

scoreboard players add @s sculk_direction 1
execute if score @s sculk_direction matches 24.. run function sculk:blocks/mechanics/node_shell_up