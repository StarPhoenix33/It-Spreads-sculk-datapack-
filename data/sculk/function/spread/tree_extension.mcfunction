setblock ~ ~ ~ warped_hyphae replace
execute if predicate sculk:place_attept_chance_stuck run setblock ~ ~ ~ warped_wart_block replace
function sculk:spread/destroy_leaves

scoreboard players remove @s[scores={sculk_steps=1..}] sculk_steps 1