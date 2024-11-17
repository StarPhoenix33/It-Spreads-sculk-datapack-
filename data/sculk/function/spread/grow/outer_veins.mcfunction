function sculk:spread/grow/veins_remove_outer

execute if block ~1 ~ ~ #sculk:infectable positioned ~1 ~ ~ run function sculk:spread/grow/veins_place_outer
execute if block ~-1 ~ ~ #sculk:infectable positioned ~-1 ~ ~ run function sculk:spread/grow/veins_place_outer
execute if block ~ ~1 ~ #sculk:infectable positioned ~ ~1 ~ run function sculk:spread/grow/veins_place_outer
execute if block ~ ~-1 ~ #sculk:infectable positioned ~ ~-1 ~ run function sculk:spread/grow/veins_place_outer
execute if block ~ ~ ~1 #sculk:infectable positioned ~ ~ ~1 run function sculk:spread/grow/veins_place_outer
execute if block ~ ~ ~-1 #sculk:infectable positioned ~ ~ ~-1 run function sculk:spread/grow/veins_place_outer