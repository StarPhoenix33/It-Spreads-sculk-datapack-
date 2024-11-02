execute store result score @s temp run data get entity @s Pos[1]
scoreboard players operation @s temp += @s node_stage
execute store result entity @s data.maxHeight int 1 run scoreboard players get @s temp
execute store result entity @s data.spreadRange int 1 run scoreboard players get @s node_stage