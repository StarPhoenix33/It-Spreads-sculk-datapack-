summon marker ~ ~ ~ {NoGravity:1b,Tags:["sculk","tentacle","s_tick"]}
execute store result score @n[tag=sculk,tag=tentacle,tag=!s_init] sculk_timer run random value 5..10
tp @n[tag=sculk,tag=tentacle,tag=!s_init] ~ ~0.1 ~