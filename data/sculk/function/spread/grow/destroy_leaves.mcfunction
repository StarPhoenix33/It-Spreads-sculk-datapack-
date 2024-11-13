execute if block ~1 ~ ~ #leaves[persistent=false] run setblock ~1 ~ ~ air replace
execute if block ~-1 ~ ~ #leaves[persistent=false] run setblock ~-1 ~ ~ air replace
execute if block ~ ~1 ~ #leaves[persistent=false] run setblock ~ ~1 ~ air replace
execute if block ~ ~-1 ~ #leaves[persistent=false] run setblock ~ ~-1 ~ air replace
execute if block ~ ~ ~1 #leaves[persistent=false] run setblock ~ ~ ~1 air replace
execute if block ~ ~ ~-1 #leaves[persistent=false] run setblock ~ ~ ~-1 air replace

execute if block ~1 ~ ~ vine[west=true] run setblock ~1 ~ ~ sculk_vein[west=true] replace
execute if block ~-1 ~ ~ vine[east=true] run setblock ~-1 ~ ~ sculk_vein[east=true] replace
execute if block ~ ~-1 ~ vine[up=true] run setblock ~ ~-1 ~ sculk_vein[up=true] replace
execute if block ~ ~ ~1 vine[north=true] run setblock ~ ~ ~1 sculk_vein[north=true] replace
execute if block ~ ~ ~-1 vine[south=true] run setblock ~ ~ ~-1 sculk_vein[south=true] replace