execute unless block ~1 ~ ~ #sculk:pass_check unless block ~-1 ~ ~ #sculk:pass_check unless block ~ ~1 ~ #sculk:pass_check unless block ~ ~-1 ~ #sculk:pass_check unless block ~ ~ ~1 #sculk:pass_check unless block ~ ~ ~-1 #sculk:pass_check run return fail
execute unless entity @n[tag=sculk,tag=node,scores={node_stage=4..},distance=..4] run tag @s remove burrow