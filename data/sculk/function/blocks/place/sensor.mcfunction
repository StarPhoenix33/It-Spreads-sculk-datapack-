setblock ~ ~ ~ sculk_sensor replace
summon marker ~ ~ ~ {Tags:["sculk","sensor"]}

scoreboard players remove @s[scores={sculk_steps=1..}] sculk_steps 1