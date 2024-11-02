# Sculk Node
execute as @s[tag=node] align xyz positioned ~0.5 ~0.5 ~0.5 run function sculk:init/node

# Melting Sculk
execute as @s[tag=melt] run function sculk:init/melting_sculk

# Sculk growth tendril
execute as @s[tag=tendril] run function sculk:init/tendril

execute at @s align xyz run tp @s ~0.5 ~0.5 ~0.5
tag @s add s_init