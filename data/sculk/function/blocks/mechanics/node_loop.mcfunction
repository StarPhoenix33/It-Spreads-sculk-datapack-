# Node Stage Data
execute store result entity @s data.nodeStage int 1 run scoreboard players get @s node_stage

# Bloom (spawn tendrils)
scoreboard players operation @s temp = .aggression HIVEMIND
scoreboard players operation @s temp /= #10 temp
scoreboard players operation @s temp += @s node_stage
scoreboard players add @s temp 2
execute store result score .random HIVEMIND run random value 1..40
execute if score @s temp >= .random HIVEMIND run function sculk:blocks/mechanics/node_bloom with entity @s data

# Evolve
execute at @s[scores={node_stage=1}] if score @s infected_blocks matches 50.. if score .mass HIVEMIND matches 100.. run function sculk:blocks/mechanics/node_evolve {"mass":100}
execute at @s[scores={node_stage=2}] if score @s infected_blocks matches 300.. if score .mass HIVEMIND matches 500.. run function sculk:blocks/mechanics/node_evolve {"mass":200}
execute at @s[scores={node_stage=3}] if score @s infected_blocks matches 800.. if score .mass HIVEMIND matches 2000.. run function sculk:blocks/mechanics/node_evolve {"mass":500}
execute at @s[scores={node_stage=4}] if score @s infected_blocks matches 2000.. if score .mass HIVEMIND matches 5000.. run function sculk:blocks/mechanics/node_evolve {"mass":1000}
execute at @s[scores={node_stage=5}] if score @s infected_blocks matches 4000.. if score .mass HIVEMIND matches 10000.. run function sculk:blocks/mechanics/node_evolve {"mass":2000}
execute at @s[scores={node_stage=6}] if score @s infected_blocks matches 8000.. if score .mass HIVEMIND matches 20000.. run function sculk:blocks/mechanics/node_evolve {"mass":5000}

# Heartbeat
playsound entity.warden.heartbeat block @a[distance=..100] ~ ~ ~ 2 1.2