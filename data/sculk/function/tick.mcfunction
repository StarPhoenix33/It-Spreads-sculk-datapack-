# Sculk Blocks
execute as @e[tag=sculk,tag=s_tick,tag=s_init] at @s run function sculk:blocks/block_tick

# Tendril
execute as @e[tag=sculk,tag=tendril,tag=!s_init] at @s run function sculk:init/tendril
execute store result score .random HIVEMIND run random value 1..50
execute if score .random HIVEMIND <= .aggression HIVEMIND as @e[tag=sculk,tag=tendril] at @s run function sculk:spread/tendril_main

# Hivemind
execute if score .aggression HIVEMIND matches 51.. run scoreboard players set .aggression HIVEMIND 50
scoreboard players set .random HIVEMIND 0