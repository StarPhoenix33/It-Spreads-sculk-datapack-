# Spawn Tendrils
execute if predicate sculk:spread_chance run function sculk:blocks/place/spawn_tendrils {"count":3}



# Bloom (spawn tendrils)
scoreboard players operation @s temp = @s node_stage
scoreboard players add @s temp 3
execute store result score .random HIVEMIND run random value 1..30
execute if score @s temp >= .random HIVEMIND run function sculk:blocks/mechanics/node_bloom


# Heartbeat
playsound entity.warden.heartbeat block @a[distance=..100] ~ ~ ~ 2 1