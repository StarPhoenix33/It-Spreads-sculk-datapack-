execute if block ~1 ~ ~ #leaves[persistent=false] run setblock ~1 ~ ~ air replace
execute if block ~-1 ~ ~ #leaves[persistent=false] run setblock ~-1 ~ ~ air replace
execute if block ~ ~1 ~ #leaves[persistent=false] run setblock ~ ~1 ~ air replace
execute if block ~ ~-1 ~ #leaves[persistent=false] run setblock ~ ~-1 ~ air replace
execute if block ~ ~ ~1 #leaves[persistent=false] run setblock ~ ~ ~1 air replace
execute if block ~ ~ ~-1 #leaves[persistent=false] run setblock ~ ~ ~-1 air replace

execute if block ~1 ~ ~ vine run setblock ~1 ~ ~ air replace
execute if block ~-1 ~ ~ vine run setblock ~-1 ~ ~ air replace
execute if block ~ ~1 ~ vine run setblock ~ ~1 ~ air replace
execute if block ~ ~-1 ~ vine run setblock ~ ~-1 ~ air replace
execute if block ~ ~ ~1 vine run setblock ~ ~ ~1 air replace
execute if block ~ ~ ~-1 vine run setblock ~ ~ ~-1 air replace