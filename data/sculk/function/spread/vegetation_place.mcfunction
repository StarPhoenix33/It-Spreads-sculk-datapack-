execute store result score @s temp run random value 1..100

# Sculk Vein
execute if score @s temp matches 1..90 run setblock ~ ~ ~ sculk_vein[down=true] keep

# Twisting Vines
execute if score @s temp matches 91..96 run setblock ~ ~ ~ twisting_vines_plant keep

# Dead Coral
execute unless entity @s[tag=corruptplant] unless predicate sculk:place_attept_chance_stuck run scoreboard players set @s temp 0
execute if score @s temp matches 97 run setblock ~ ~ ~ dead_brain_coral[waterlogged=false] keep
execute if score @s temp matches 98 run setblock ~ ~ ~ dead_horn_coral[waterlogged=false] keep
execute if score @s temp matches 99 run setblock ~ ~ ~ dead_brain_coral_fan[waterlogged=false] keep
execute if score @s temp matches 100 run setblock ~ ~ ~ dead_tube_coral_fan[waterlogged=false] keep


execute unless entity @s[tag=corruptplant] if predicate sculk:50_perc_chance run scoreboard players remove @s[scores={sculk_steps=1..}] sculk_steps 1