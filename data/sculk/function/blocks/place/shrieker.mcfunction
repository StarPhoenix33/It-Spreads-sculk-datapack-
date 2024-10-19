setblock ~ ~ ~ sculk_shrieker[can_summon=false] replace
summon marker ~ ~ ~ {Tags:["sculk","shrieker","s_tick"]}

scoreboard players remove @s[scores={sculk_steps=1..}] sculk_steps 1
scoreboard players remove @s[scores={sculk_steps=1..}] sculk_steps 1