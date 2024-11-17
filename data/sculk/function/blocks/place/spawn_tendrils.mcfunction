execute if score .tendrils HIVEMIND > .maxtendrils HIVEMIND as @e[tag=sculk,tag=tendril,tag=sculkstuck,tag=!burrow,limit=1,sort=random] run scoreboard players set @s sculk_steps 0
execute if score .tendrils HIVEMIND > .maxtendrils HIVEMIND run return fail
summon minecraft:marker ~ ~ ~ {Tags:["sculk","tendril"]}
scoreboard players remove @s[scores={temp=1..}] temp 1

execute if score @s temp matches 1.. run function sculk:blocks/place/spawn_tendrils