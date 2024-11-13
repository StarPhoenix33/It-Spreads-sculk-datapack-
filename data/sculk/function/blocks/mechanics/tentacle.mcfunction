execute unless score @s sculk_timer matches 1.. run kill @s
execute unless entity @n[tag=sculk,tag=node,distance=..4] unless block ~ ~ ~ #sculk:sculk_variants unless block ~ ~ ~ spawner unless block ~ ~ ~ command_block run kill @s

execute at @s if predicate sculk:50_perc_chance run tp @s ~ ~ ~ facing entity @n[predicate=sculk:tentacle_target,distance=..12] feet
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ sculk unless entity @n[tag=sculk,tag=tentacleblock,distance=..0.1] at @s run tp @s ~ ~0.2 ~ ~ ~-5
execute store result storage sculk:hivemind turn int 1 run random value -60..60
execute at @s run function sculk:spread/turn with storage sculk:hivemind

execute at @s if block ^ ^ ^0.35 #sculk:tentacle_pass_through if entity @n[predicate=sculk:tentacle_target,distance=..12] run tp @s ^ ^ ^0.2
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #replaceable run function sculk:blocks/place/melting_tentacle_sculk

execute at @s if predicate sculk:50_perc_chance positioned ^ ^ ^0.25 if entity @n[predicate=sculk:tentacle_target,distance=..1] run function sculk:blocks/mechanics/tentacle_grip