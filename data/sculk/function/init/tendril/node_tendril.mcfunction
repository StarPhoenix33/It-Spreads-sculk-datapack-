# Save Node position
data modify entity @s data.node set value {"x":0,"y":0,"z":0}
data modify entity @s data.node.x set from entity @n[tag=sculk,tag=node] Pos[0]
data modify entity @s data.node.y set from entity @n[tag=sculk,tag=node] Pos[1]
data modify entity @s data.node.z set from entity @n[tag=sculk,tag=node] Pos[2]

# Set Timer
scoreboard players operation @s temp = @n[tag=sculk,tag=node,distance=..1] node_stage
scoreboard players operation @s temp *= #20 temp
scoreboard players add @s temp 40
scoreboard players operation @s sculk_timer = @s temp

# Set steps
execute store result storage sculk:hivemind minSteps int 5 run scoreboard players get @n[tag=sculk,tag=node] node_stage
execute store result storage sculk:hivemind maxSteps int 10 run scoreboard players get @n[tag=sculk,tag=node] node_stage
function sculk:init/tendril/sculk_steps_randomizer with storage sculk:hivemind

# Tp to nearby location
function sculk:init/tendril/spread_tp_randomly with entity @n[tag=sculk,tag=node,distance=..1] data
execute at @s unless entity @n[tag=sculk,tag=node,distance=1..100] run function sculk:init/tendril/face_away_from_node

tag @s add nodetendril
