execute at @s run tp @s ~ ~ ~ facing entity @n[tag=sculk,tag=node,distance=1..100]
execute at @s run tp @s ~ ~ ~ ~180 0
execute store result storage sculk:hivemind turn int 1 run random value -90..90
execute at @s run function sculk:spread/turn with storage sculk:hivemind