$execute positioned $(x) $(y) $(z) as @e[tag=sculk,tag=tendril,tag=sculkstuck,tag=!burrow,distance=..10,limit=3] run tag @s add split
execute rotated as @s run tp @e[tag=sculk,tag=tendril,tag=split,limit=3] ~ ~ ~ ~ ~
tag @e[tag=sculk,tag=tendril,tag=split,distance=..1,limit=3] remove split

particle sculk_charge_pop ~ ~0.5 ~ 0.15 0.15 0.15 0.1 20 force @a