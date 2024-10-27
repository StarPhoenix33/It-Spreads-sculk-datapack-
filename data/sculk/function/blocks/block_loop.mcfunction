# Node
execute if entity @s[tag=node] run function sculk:blocks/mechanics/node_loop


# Delete Conditions
execute if entity @s[tag=sensor] unless block ~ ~ ~ sculk_sensor run kill @s
execute if entity @s[tag=shrieker] unless block ~ ~ ~ sculk_shrieker run kill @s