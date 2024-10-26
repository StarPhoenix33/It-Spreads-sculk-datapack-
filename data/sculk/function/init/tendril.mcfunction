tag @s add sculkstuck
tag @s add burrow
execute store result score @s sculk_steps run random value 10..20
scoreboard players set @s sculk_stuck 0
scoreboard players set @s sculk_timer 180
execute store result score @s sculk_direction run random value 1..8
function sculk:spread/init_direction
execute if predicate sculk:place_attept_chance_stuck run tag @s add invertedsweep

execute at @s if entity @n[tag=sculk,tag=node,distance=..1] run function sculk:init/tendril_node