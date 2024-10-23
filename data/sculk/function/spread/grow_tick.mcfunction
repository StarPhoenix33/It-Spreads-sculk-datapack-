# Spread Chances (function cancel)
execute as @s[tag=!sculkstuck] unless predicate sculk:spread_chance run return fail
execute as @s[tag=sculkstuck] unless predicate sculk:spread_chance_stuck run return fail
execute unless entity @s[tag=burrow] unless block ~ ~ ~ #sculk:sculk_variants unless block ~ ~ ~ #sculk:infectable run scoreboard players set @s sculk_steps 0

# Turn randomly
execute if entity @s[tag=!sculkstuck] store result storage sculk:hivemind turn int 1 run random value -75..75
execute if entity @s[tag=sculkstuck] store result storage sculk:hivemind turn int 1 run random value -50..50
function sculk:spread/turn with storage sculk:hivemind

#execute if predicate sculk:spread_chance run tp @s ~ ~ ~ facing entity @r[distance=..1,gamemode=!spectator]
execute at @s run tp @s ~ ~ ~ ~ 0

# Sweep for infectable blocks & tp to valid ones
execute at @s[tag=!invertedsweep] run function sculk:spread/sweep {"a":"","b":"-"}
execute at @s[tag=invertedsweep] run function sculk:spread/sweep {"a":"-","b":""}
execute at @s[tag=!infect,tag=!sculkstuck] run scoreboard players add @s sculk_stuck 1

# Fix position
execute at @s align xyz run tp @s ~0.5 ~0.5 ~0.5 ~ 0

# Sculkstuck
execute if score @s sculk_stuck matches 4.. run tag @s add sculkstuck

# INFECT
execute at @s[tag=infect] align xyz positioned ~0.5 ~0.5 ~0.5 run function sculk:spread/infect

# Sweep Swap
execute if predicate sculk:sweep_swap_chance run tag @s[tag=invertedsweep] remove invertedsweep
execute if predicate sculk:sweep_swap_chance run tag @s[tag=!invertedsweep] add invertedsweep

# Burrow 
execute at @s[tag=burrow] run function sculk:spread/burrow_check

# End Conditions
execute if score @s sculk_timer matches ..0 run scoreboard players set @s sculk_steps 0
execute at @s unless block ~ ~ ~ #sculk:sculk_variants unless block ~ ~ ~ #sculk:infectable run scoreboard players set @s sculk_steps 0
kill @s[scores={sculk_steps=..0}]

tag @s remove infect