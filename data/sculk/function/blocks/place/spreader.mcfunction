summon marker ~ ~ ~ {Tags:["sculk","spreader"]}
execute store result score @n[tag=sculk,tag=spreader,tag=!s_init] sculk_timer run random value 120..300

function sculk:hivemind/maximum_update

playsound block.sculk_catalyst.bloom block @a[distance=..100] ~ ~ ~ 0.5 1.2