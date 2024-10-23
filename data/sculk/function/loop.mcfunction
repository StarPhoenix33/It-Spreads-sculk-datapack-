# 1 SECOND LOOP
# Sculk Blocks
execute as @e[tag=sculk,tag=!tendril,tag=s_init] at @s run function sculk:blocks/block_loop

execute as @e[tag=sculk,scores={sculk_timer=1..}] run scoreboard players remove @s sculk_timer 1
execute as @e[tag=sculk,tag=tendril,scores={sculk_timer=0}] run kill @s


schedule function sculk:loop 20 replace