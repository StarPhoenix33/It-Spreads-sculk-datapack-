execute unless score @s sculk_timer matches 1.. run function sculk:delete
execute unless block ~ ~ ~ #sculk:sculk_variants unless block ~ ~ ~ spawner unless block ~ ~ ~ command_block run function sculk:delete


execute at @s run tp @s ~ ~ ~ facing entity @n[predicate=sculk:tentacle_target,distance=..12] feet

execute at @s if block ^ ^ ^0.3 #sculk:tentacle_pass_through if entity @n[predicate=sculk:tentacle_target,distance=..12] run tp @s ^ ^ ^0.2
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #replaceable run function sculk:blocks/place/melting_tentacle_sculk


execute at @s if predicate sculk:spread_chance_stuck positioned ^ ^ ^0.15 if entity @n[predicate=sculk:tentacle_target,distance=..1] run function sculk:blocks/mechanics/tentacle_grip
