# Sculk Node
execute as @s[tag=node] align xyz positioned ~0.5 ~0.5 ~0.5 run function sculk:init/node

# Sculk Tentacle
execute as @s[tag=tentacle] run function sculk:init/tentacle

# Melting Sculk
execute as @s[tag=melt] run function sculk:init/melting_sculk

execute at @s align xyz run tp @s ~0.5 ~0.5 ~0.5
tag @s add s_init