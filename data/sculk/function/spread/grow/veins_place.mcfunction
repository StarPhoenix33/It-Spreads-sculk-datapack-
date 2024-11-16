execute if predicate sculk:50_perc_chance if block ~1 ~ ~ #sculk:veins_replaceable run setblock ~1 ~ ~ sculk_vein[west=true] replace
execute if predicate sculk:50_perc_chance if block ~-1 ~ ~ #sculk:veins_replaceable run setblock ~-1 ~ ~ sculk_vein[east=true] replace
execute if predicate sculk:50_perc_chance if block ~ ~1 ~ #sculk:veins_replaceable run setblock ~ ~1 ~ sculk_vein[down=true] replace
execute if predicate sculk:50_perc_chance if block ~ ~-1 ~ #sculk:veins_replaceable run setblock ~ ~-1 ~ sculk_vein[up=true] replace
execute if predicate sculk:50_perc_chance if block ~ ~ ~1 #sculk:veins_replaceable run setblock ~ ~ ~1 sculk_vein[north=true] replace
execute if predicate sculk:50_perc_chance if block ~ ~ ~-1 #sculk:veins_replaceable run setblock ~ ~ ~-1 sculk_vein[south=true] replace

execute if predicate sculk:50_perc_chance if block ~1 ~ ~ water[level=0] run setblock ~1 ~ ~ sculk_vein[west=true,waterlogged=true] replace
execute if predicate sculk:50_perc_chance if block ~-1 ~ ~ water[level=0] run setblock ~-1 ~ ~ sculk_vein[east=true,waterlogged=true] replace
execute if predicate sculk:50_perc_chance if block ~ ~1 ~ water[level=0] run setblock ~ ~1 ~ sculk_vein[down=true,waterlogged=true] replace
execute if predicate sculk:50_perc_chance if block ~ ~-1 ~ water[level=0] run setblock ~ ~-1 ~ sculk_vein[up=true,waterlogged=true] replace
execute if predicate sculk:50_perc_chance if block ~ ~ ~1 water[level=0] run setblock ~ ~ ~1 sculk_vein[north=true,waterlogged=true] replace
execute if predicate sculk:50_perc_chance if block ~ ~ ~-1 water[level=0] run setblock ~ ~ ~-1 sculk_vein[south=true,waterlogged=true] replace