execute unless block ~ ~ ~ #sculk:infectable run tag @s add fail

# Check all 6 faces
execute unless block ~1 ~ ~ #sculk:pass_check unless block ~-1 ~ ~ #sculk:pass_check unless block ~ ~1 ~ #sculk:pass_check unless block ~ ~-1 ~ #sculk:pass_check unless block ~ ~ ~1 #sculk:pass_check unless block ~ ~ ~-1 #sculk:pass_check run tag @s add fail