summon marker ~ ~ ~ {Tags:["sculk","spreader"]}
execute store result score @n[tag=sculk,tag=spreader,tag=!s_init] sculk_timer run random value 120..300

particle sculk_charge_pop ~ ~0.5 ~ 0.15 0.15 0.15 0.1 20 normal @a
particle sculk_charge_pop ~ ~-0.5 ~ 0.15 0.15 0.15 0.1 20 normal @a
playsound block.sculk_catalyst.bloom block @a[distance=..100] ~ ~ ~ 0.5 1.2