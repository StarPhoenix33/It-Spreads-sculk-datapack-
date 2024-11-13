execute unless score @s sculk_timer matches 1.. run kill @s
execute unless entity @n[tag=sculk,tag=node,distance=..4] unless block ~ ~ ~ #sculk:sculk_variants unless block ~ ~ ~ spawner unless block ~ ~ ~ command_block run kill @s

execute at @s if predicate sculk:50_perc_chance run tp @s ~ ~ ~ facing entity @n[predicate=sculk:tentacle_target,distance=..12] feet
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ sculk unless entity @n[tag=sculk,tag=tentacleblock,distance=..0.1] at @s run tp @s ~ ~ ~ ~ ~-10
execute at @s if predicate sculk:spread_chance_stuck run tp @s ~ ~ ~ ~ ~-5
execute at @s if predicate sculk:spread_chance_stuck run tp @s ~ ~ ~ ~ ~7

execute store result storage sculk:hivemind turn int 1 run random value -40..40
execute at @s run function sculk:spread/turn with storage sculk:hivemind

execute at @s if block ^ ^ ^0.3 #sculk:tentacle_pass_through run tp @s ^ ^ ^0.2
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #replaceable run function sculk:blocks/place/melting_tentacle_sculk

execute at @s unless score @s temp = @s sculk_timer run function sculk:blocks/mechanics/tentacle_grip
scoreboard players operation @s temp = @s sculk_timer