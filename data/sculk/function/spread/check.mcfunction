execute unless block ~ ~ ~ #sculk:infectable run tag @s add fail
execute if entity @s[tag=sculkstuck,tag=fail] if block ~ ~ ~ #sculk:sculkstuck_valid run tag @s remove fail

# Check all 6 faces
execute unless block ~1 ~ ~ #sculk:pass_check unless block ~-1 ~ ~ #sculk:pass_check unless block ~ ~1 ~ #sculk:pass_check unless block ~ ~-1 ~ #sculk:pass_check unless block ~ ~ ~1 #sculk:pass_check unless block ~ ~ ~-1 #sculk:pass_check run tag @s add fail
execute if entity @s[tag=burrow,tag=fail] if block ~ ~ ~ #sculk:sculk_variants run tag @s remove fail