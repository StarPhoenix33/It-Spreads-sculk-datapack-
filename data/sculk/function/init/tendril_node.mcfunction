scoreboard players operation @s node_stage = @n[tag=sculk,tag=node] node_stage

data modify entity @s data.node set value {"x":0,"y":0,"z":0}
data modify entity @s data.node.x set from entity @n[tag=sculk,tag=node] Pos[0]
data modify entity @s data.node.y set from entity @n[tag=sculk,tag=node] Pos[1]
data modify entity @s data.node.z set from entity @n[tag=sculk,tag=node] Pos[2]

execute store result storage sculk:hivemind minSteps int 5 run scoreboard players get @n[tag=sculk,tag=node] node_stage
execute store result storage sculk:hivemind maxSteps int 10 run scoreboard players get @n[tag=sculk,tag=node] node_stage
function sculk:init/sculk_steps_randomizer with storage sculk:hivemind

tag @s add nodetendril