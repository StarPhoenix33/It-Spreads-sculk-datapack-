execute if score @s sculk_timer matches ..0 run function sculk:delete

tp @s ^ ^ ^0.15 facing entity @n[type=#sculk:sculk_tentacle_target,distance=..12] feet 
execute at @s if block ~ ~ ~ #replaceable run setblock ~ ~ ~ sculk