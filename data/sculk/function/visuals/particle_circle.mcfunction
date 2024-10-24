scoreboard players set .spin temp 90
summon area_effect_cloud ~ ~ ~ {Tags:["circle"]}

$execute as @n[tag=circle,type=area_effect_cloud] at @s run function sculk:visuals/particle_circle_recursive {"particle":"$(particle)","pos":"$(pos)","speed":$(speed)}

execute as @n[tag=circle,type=area_effect_cloud,distance=..0.1] run function sculk:delete