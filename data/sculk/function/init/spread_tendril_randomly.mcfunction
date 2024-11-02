$spreadplayers ~ ~ 0 $(spreadRange) under $(maxHeight) false @s
execute at @s unless entity @n[tag=sculk,tag=node,distance=..20] run tp @s @n[tag=sculk,tag=node]
execute at @s if block ~ ~-1 ~ sculk_sensor run tp @s ~ ~-1 ~
execute at @s if block ~ ~-1 ~ sculk_shrieker run tp @s ~ ~-1 ~
execute at @s unless block ~ ~-1 ~ #sculk:infectable unless block ~ ~-1 ~ #sculk:sculk_variants run tp @s @n[tag=sculk,tag=node]
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~