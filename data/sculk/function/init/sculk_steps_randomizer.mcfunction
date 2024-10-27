$execute store result score @s sculk_steps run random value $(minSteps)..$(maxSteps)
execute if score @n[tag=sculk,tag=node,distance=..1] node_stage matches 7 store result score @s temp run random value 5..10
execute if score @n[tag=sculk,tag=node,distance=..1] node_stage matches 7 run scoreboard players operation @s sculk_steps += @s temp