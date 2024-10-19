execute store result score @s temp run random value 1..100

# Sculk Vein
execute if score @s temp matches 1..85 run setblock ~ ~ ~ sculk_vein[down=true] keep

# Dead Coral
execute if score @s temp matches 86 run setblock ~ ~ ~ dead_tube_coral[waterlogged=false] keep
execute if score @s temp matches 87 run setblock ~ ~ ~ dead_brain_coral[waterlogged=false] keep
execute if score @s temp matches 88 run setblock ~ ~ ~ dead_horn_coral[waterlogged=false] keep

# Dripstone Spike
execute if score @s temp matches 89..90 run setblock ~ ~ ~ pointed_dripstone[vertical_direction=up] keep

# Twisting Vines
execute if score @s temp matches 91..100 run setblock ~ ~ ~ twisting_vines_plant keep

execute unless entity @s[tag=corruptplant] if predicate sculk:place_attept_chance_stuck run scoreboard players remove @s[scores={sculk_steps=1..}] sculk_steps 1
tag @s remove spawnvein
tag @s remove corruptplant