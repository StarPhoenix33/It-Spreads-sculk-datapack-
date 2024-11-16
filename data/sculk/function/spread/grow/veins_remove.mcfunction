execute unless predicate sculk:33_perc_chance if block ~1 ~ ~ sculk_vein[west=true,waterlogged=false] run setblock ~1 ~ ~ air replace
execute unless predicate sculk:33_perc_chance if block ~-1 ~ ~ sculk_vein[east=true,waterlogged=false] run setblock ~-1 ~ ~ air replace
execute unless predicate sculk:33_perc_chance if block ~ ~1 ~ sculk_vein[down=true,waterlogged=false] run setblock ~ ~1 ~ air replace
execute unless predicate sculk:33_perc_chance if block ~ ~-1 ~ sculk_vein[up=true,waterlogged=false] run setblock ~ ~-1 ~ air replace
execute unless predicate sculk:33_perc_chance if block ~ ~ ~1 sculk_vein[north=true,waterlogged=false] run setblock ~ ~ ~1 air replace
execute unless predicate sculk:33_perc_chance if block ~ ~ ~-1 sculk_vein[south=true,waterlogged=false] run setblock ~ ~ ~-1 air replace

execute unless predicate sculk:33_perc_chance if block ~1 ~ ~ sculk_vein[west=true,waterlogged=true] run setblock ~1 ~ ~ water replace
execute unless predicate sculk:33_perc_chance if block ~-1 ~ ~ sculk_vein[east=true,waterlogged=true] run setblock ~-1 ~ ~ water replace
execute unless predicate sculk:33_perc_chance if block ~ ~1 ~ sculk_vein[down=true,waterlogged=true] run setblock ~ ~1 ~ water replace
execute unless predicate sculk:33_perc_chance if block ~ ~-1 ~ sculk_vein[up=true,waterlogged=true] run setblock ~ ~-1 ~ water replace
execute unless predicate sculk:33_perc_chance if block ~ ~ ~1 sculk_vein[north=true,waterlogged=true] run setblock ~ ~ ~1 water replace
execute unless predicate sculk:33_perc_chance if block ~ ~ ~-1 sculk_vein[south=true,waterlogged=true] run setblock ~ ~ ~-1 water replace