execute if entity @n[tag=sculk,tag=node,scores={node_stage=1..5},distance=..3.5] run return fail
execute if entity @n[tag=sculk,tag=node,scores={node_stage=6..7},distance=..5.5] run return fail

setblock ~ ~ ~ warped_hyphae replace
execute if predicate sculk:place_attept_chance_stuck run setblock ~ ~ ~ warped_wart_block replace
function sculk:spread/destroy_leaves

scoreboard players remove @s[scores={sculk_steps=1..}] sculk_steps 1

