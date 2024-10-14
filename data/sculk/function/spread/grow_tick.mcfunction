# Spread Chances (function cancel)
execute unless entity @s[tag=sculkstuck] unless predicate sculk:spread_chance run return fail
execute if entity @s[tag=sculkstuck] unless predicate sculk:spread_chance_stuck run return fail


# Turn randomly
execute store result storage sculk:hivemind turn int 1 run random value -90..90
function sculk:spread/turn with storage sculk:hivemind

execute if predicate sculk:spread_chance run tp @s ~ ~ ~ facing entity @r[distance=..1,gamemode=!spectator]
execute at @s run tp @s ~ ~ ~ ~ 0

# Sweep for infectable blocks & tp to valid ones
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^ ^1"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^-1 ^"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^1 ^"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^-1 ^1"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^1 ^1"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^ ^"}
execute at @s[tag=!infect,tag=!sculkstuck] run scoreboard players add @s sculk_stuck 1

# Fix position
execute at @s align xyz run tp @s ~0.5 ~0.5 ~0.5 ~ 0

# Sculkstuck
execute if score @s sculk_stuck matches 8.. run tag @s add sculkstuck

execute at @s[tag=infect] run function sculk:spread/infect

execute at @s unless block ~ ~ ~ #sculk:sculk_variants unless block ~ ~ ~ #sculk:infectable run scoreboard players set @s sculk_steps 0

execute if entity @s[scores={sculk_steps=..0}] run say bye
kill @s[scores={sculk_steps=..0}]
tag @s remove infect