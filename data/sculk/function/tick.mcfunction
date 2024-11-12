execute as @e[tag=sculk,tag=s_tick,tag=s_init] at @s run function sculk:blocks/block_tick
execute as @e[tag=sculk,tag=!s_init] at @s run function sculk:init

# Tendril
execute store result score .random HIVEMIND run random value 1..40
execute if score .random HIVEMIND <= .aggression HIVEMIND as @e[tag=sculk,tag=tendril] at @s run function sculk:spread/tendril_main
scoreboard players set .random HIVEMIND 0
