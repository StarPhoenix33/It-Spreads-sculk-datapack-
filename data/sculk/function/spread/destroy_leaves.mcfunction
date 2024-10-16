execute if block ~1 ~ ~ #leaves[persistent=false] run setblock ~1 ~ ~ air destroy
execute if block ~-1 ~ ~ #leaves[persistent=false] run setblock ~-1 ~ ~ air destroy
execute if block ~ ~1 ~ #leaves[persistent=false] run setblock ~ ~1 ~ air destroy
execute if block ~ ~-1 ~ #leaves[persistent=false] run setblock ~ ~-1 ~ air destroy
execute if block ~ ~ ~1 #leaves[persistent=false] run setblock ~ ~ ~1 air destroy
execute if block ~ ~ ~-1 #leaves[persistent=false] run setblock ~ ~ ~-1 air destroy