# 1 SECOND LOOP
# Sculk Blocks
execute as @e[tag=sculk,tag=!tendril] at @s run function sculk:blocks/block_loop

execute as @e[tag=sculk,scores={sculk_timer=1..}] run scoreboard players remove @s sculk_timer 1


schedule function sculk:loop 20 replace