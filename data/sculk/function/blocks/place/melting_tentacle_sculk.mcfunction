kill @n[tag=sculk,tag=melt,tag=tentacleblock,tag=s_init,distance=..0.1]
summon marker ~ ~ ~ {NoGravity:1b,Tags:["sculk","melt","tentacleblock"]}
scoreboard players operation @n[tag=sculk,tag=melt,tag=tentacleblock,tag=!s_init] sculk_timer = @s sculk_timer