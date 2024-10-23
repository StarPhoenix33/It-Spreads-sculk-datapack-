execute store result score @s temp run random value 1..100

# Sculk Vein
execute if score @s temp matches 1..90 run setblock ~ ~ ~ sculk_vein[down=true] keep

# Twisting Vines
execute if score @s temp matches 91..95 run setblock ~ ~ ~ twisting_vines_plant keep

# Nether Sprouts
execute if score @s temp matches 96..100 run setblock ~ ~ ~ nether_sprouts keep

# Dead Coral
#execute if score @s temp matches 99 run setblock ~ ~ ~ dead_brain_coral[waterlogged=false] keep
#execute if score @s temp matches 100 run setblock ~ ~ ~ dead_horn_coral[waterlogged=false] keep


execute unless entity @s[tag=corruptplant] if predicate sculk:50_perc_chance run scoreboard players remove @s[scores={sculk_steps=1..}] sculk_steps 1
function sculk:spread/node_infection_report with entity @s data.node
scoreboard players add .mass HIVEMIND 1