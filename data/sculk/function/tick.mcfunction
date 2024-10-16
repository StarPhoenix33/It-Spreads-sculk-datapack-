execute as @e[tag=sculk,tag=!s_init] at @s run function sculk:init
execute as @e[tag=sculk,tag=s_tick] at @s run function sculk:blocks/block_tick
execute as @e[tag=tendril] at @s run function sculk:spread/grow_tick
