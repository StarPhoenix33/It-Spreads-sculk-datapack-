# 1 SECOND LOOP
# Hivemind
scoreboard players set .tendrils HIVEMIND 0
execute at @e[tag=sculk,tag=tendril,tag=nodetendril] run scoreboard players add .tendrils HIVEMIND 1
scoreboard players set .spreaders HIVEMIND 0

# Sculk Blocks
execute as @e[tag=sculk,tag=!tendril,tag=s_init] at @s run function sculk:blocks/block_loop

execute as @e[tag=sculk,scores={sculk_timer=1..}] if loaded ~ ~ ~ run scoreboard players remove @s sculk_timer 1
execute as @e[tag=sculk,tag=tendril,scores={sculk_timer=..0}] at @s run function sculk:delete


schedule function sculk:loop 20 replace