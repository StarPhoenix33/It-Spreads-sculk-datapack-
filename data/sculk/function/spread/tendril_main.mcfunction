# Spread Chances (function cancel)
execute as @s[tag=!sculkstuck] unless predicate sculk:spread_chance run return fail
execute as @s[tag=sculkstuck] unless predicate sculk:spread_chance_stuck run return fail
execute unless entity @s[tag=burrow] unless block ~ ~ ~ #sculk:sculk_variants unless block ~ ~ ~ #sculk:infectable run scoreboard players set @s sculk_steps 0

# Turn randomly
#execute if predicate sculk:50_perc_chance run tag @s add s_reverse
#execute if entity @s[tag=!sculkstuck] store result score @s sculk_direction run random value 1..7
#execute if entity @s[tag=sculkstuck] store result score @s sculk_direction run random value 1..5
#function sculk:spread/turn
#tag @s[tag=s_reverse] remove s_reverse
execute if entity @s[tag=!sculkstuck] store result storage sculk:hivemind turn int 1 run random value -75..75
execute if entity @s[tag=sculkstuck] store result storage sculk:hivemind turn int 1 run random value -55..55
function sculk:spread/turn with storage sculk:hivemind

# Sweep for infectable blocks & tp to valid ones
execute at @s[tag=!infect,tag=!invertedsweep] run function sculk:spread/sweep
execute at @s[tag=!infect,tag=invertedsweep] run function sculk:spread/sweep_inverted
execute at @s[tag=!infect,tag=!sculkstuck] run scoreboard players add @s sculk_stuck 1

# Fix position
execute at @s align xyz run tp @s ~0.5 ~0.5 ~0.5 ~ 0

# Sculkstuck
execute if score @s sculk_stuck matches 8.. run tag @s add sculkstuck

# INFECT
execute at @s[tag=infect] align xyz positioned ~0.5 ~0.5 ~0.5 run function sculk:spread/tendril_infect

# Burrow 
execute at @s[tag=burrow] run function sculk:spread/burrow_check

# END
execute at @s unless block ~ ~ ~ #sculk:sculk_variants unless block ~ ~ ~ #sculk:infectable run scoreboard players set @s sculk_steps 0
execute at @s[scores={sculk_steps=..0}] run function sculk:spread/tendril_end

tag @s[tag=infect] remove infect