execute if entity @n[tag=sculk,tag=node,distance=..5.5] run return fail

setblock ~ ~ ~ warped_hyphae replace
execute if predicate sculk:33_perc_chance run setblock ~ ~ ~ warped_wart_block replace
function sculk:spread/grow/destroy_leaves

scoreboard players remove @s[scores={sculk_steps=1..}] sculk_steps 1
scoreboard players add .mass HIVEMIND 1
