execute as @e[tag=sculk,tag=!s_init] at @s run function sculk:init
execute as @e[tag=sculk,tag=!sculkgrowth] at @s run function sculk:blocks/block_tick
execute as @e[tag=sculkgrowth] at @s run function sculk:spread/grow_tick
