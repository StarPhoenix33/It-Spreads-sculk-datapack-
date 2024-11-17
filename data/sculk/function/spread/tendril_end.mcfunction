# Sculk Node
execute if entity @s[tag=nodetendril] if score @s sculk_steps matches 0 if predicate sculk:node_chance if block ~ ~ ~ sculk if block ~ ~1 ~ #sculk:growth_replaceable positioned ~ ~1 ~ unless entity @n[tag=sculk,tag=node,distance=..60] run function sculk:blocks/place/node

# Spreader
execute at @s[tag=!sculkstuck] if predicate sculk:spreader_spawn_chance if block ~ ~ ~ sculk unless entity @n[tag=sculk,tag=spreader,distance=..10] unless entity @n[tag=sculk,tag=node,distance=..10] run function sculk:blocks/place/spreader


particle sculk_charge_pop ~ ~0.5 ~ 0.15 0.15 0.15 0.08 20 normal @a
particle sculk_charge_pop ~ ~-0.5 ~ 0.15 0.15 0.15 0.08 20 normal @a

# Delete
function sculk:delete