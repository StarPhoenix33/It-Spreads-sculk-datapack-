execute store result score @s sculk_direction run random value 1..8
function sculk:spread/init_direction

execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #replaceable run function sculk:blocks/place/melting_tentacle_sculk