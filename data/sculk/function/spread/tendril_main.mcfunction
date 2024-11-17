# Spread Chances (function cancel)
execute as @s[tag=!sculkstuck] unless predicate sculk:spread_chance run return fail
execute as @s[tag=sculkstuck] unless predicate sculk:spread_chance_stuck run return fail
execute unless entity @s[tag=burrow] unless block ~ ~ ~ #sculk:sculkstuck_valid unless block ~ ~ ~ #sculk:infectable run scoreboard players set @s sculk_steps 0

# Turn randomly
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
execute at @s unless block ~ ~ ~ #sculk:sculkstuck_valid unless block ~ ~ ~ #sculk:infectable run scoreboard players set @s sculk_steps 0
execute at @s[scores={sculk_steps=..0}] run function sculk:spread/tendril_end

tag @s[tag=infect] remove infect