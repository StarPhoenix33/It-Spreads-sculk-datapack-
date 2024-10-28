# Sculk Node
execute if entity @s[tag=nodetendril] if score @s sculk_steps matches 0 if predicate sculk:node_chance if block ~ ~ ~ sculk if block ~ ~1 ~ #sculk:growth_replaceable positioned ~ ~1 ~ unless entity @n[tag=sculk,tag=node,distance=..50] run function sculk:blocks/place/node

# Tendril Split
execute at @s[tag=!sculkstuck,scores={sculk_steps=..0}] if predicate sculk:tendril_split_chance unless entity @n[tag=sculk,tag=node,distance=..10] run function sculk:spread/tendril_split with entity @s data.node


# Delete
function sculk:delete