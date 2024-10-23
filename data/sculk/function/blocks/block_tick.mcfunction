# Node
execute if entity @s[tag=node] run function sculk:blocks/mechanics/node_tick

# Node Model
execute if entity @s[tag=nodemodel] unless block ~ ~ ~ spawner run kill @e[tag=sculk,tag=nodemodel,distance=..0.1]

# Shrieker
execute if entity @s[tag=shrieker] run function sculk:blocks/mechanics/shrieker