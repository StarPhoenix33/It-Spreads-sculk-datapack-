# Node
execute if entity @s[tag=node] run function sculk:blocks/mechanics/node_loop

# Melting Sculk
execute if entity @s[tag=melt] run function sculk:blocks/mechanics/melting_sculk

# Delete Conditions
execute if entity @s[tag=sensor] unless block ~ ~ ~ sculk_sensor run function sculk:delete
execute if entity @s[tag=shrieker] unless block ~ ~ ~ sculk_shrieker run function sculk:delete