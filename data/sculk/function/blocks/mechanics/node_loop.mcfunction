# Node Stage Data
execute store result entity @s data.nodeStage int 1 run scoreboard players get @s node_stage

# Bloom (spawn tendrils)
scoreboard players operation @s temp = .aggression HIVEMIND
scoreboard players operation @s temp /= #10 temp
scoreboard players operation @s temp += @s node_stage
scoreboard players add @s temp 2
execute store result score .random HIVEMIND run random value 1..40
execute if score @s temp >= .random HIVEMIND run function sculk:blocks/mechanics/node_bloom with entity @s data


# Heartbeat
playsound entity.warden.heartbeat block @a[distance=..100] ~ ~ ~ 2 1