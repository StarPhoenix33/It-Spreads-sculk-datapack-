setblock ~ ~ ~ air

execute store result score @s temp run random value 1..10

# Sculk Vein
execute if score @s temp matches 1..5 run setblock ~ ~ ~ sculk_vein[down=true] keep

# Twisting Vines
execute unless entity @n[tag=sculk,tag=node,distance=..10] if score @s temp matches 6..10 run setblock ~ ~ ~ twisting_vines keep

# Nether Sprouts
#execute if score @s temp matches 95..96 run setblock ~ ~ ~ nether_sprouts keep

# Dead Coral
#execute if entity @n[tag=sculk,tag=node,distance=..15] if score @s temp matches 97..98 run setblock ~ ~ ~ dead_brain_coral[waterlogged=false] keep
#execute if entity @n[tag=sculk,tag=node,distance=..15] if score @s temp matches 99..100 run setblock ~ ~ ~ dead_horn_coral[waterlogged=false] keep


execute if predicate sculk:33_perc_chance run scoreboard players remove @s[scores={sculk_steps=1..}] sculk_steps 1
function sculk:spread/node_infection_report with entity @s data.node
scoreboard players add .mass HIVEMIND 1