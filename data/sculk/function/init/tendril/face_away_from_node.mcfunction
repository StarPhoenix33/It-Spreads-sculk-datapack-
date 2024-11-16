$execute at @s run tp @s ~ ~ ~ facing $(z) $(y) $(z)
execute at @s run tp @s ~ ~ ~ ~180 0
execute store result storage sculk:hivemind turn int 1 run random value -90..90
execute at @s run function sculk:spread/turn with storage sculk:hivemind