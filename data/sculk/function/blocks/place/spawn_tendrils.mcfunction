summon minecraft:marker ~ ~ ~ {Tags:["sculk","tendril"]}
scoreboard players remove @s[scores={temp=1..}] temp 1

execute if score @s temp matches 1.. run function sculk:blocks/place/spawn_tendrils