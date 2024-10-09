particle sculk_charge_pop ~ ~0.6 ~ 0 0 0 0 1 force @a

execute unless predicate sculk:spread_chance unless entity @s[tag=sculkstuck] run return fail

execute unless score @s sculk_stuck matches 0.. run scoreboard players set @s sculk_stuck 0

# Turns randomly
execute store result score @s sculk_direction run random value 1..8
function sculk:spread/turn

# Sweep tests for infectable blocks & move to them
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^ ^1"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^1 ^"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^-1 ^"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^1 ^1"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^-1 ^1"}
execute at @s[tag=!infect,tag=!sculkstuck] run scoreboard players add @s sculk_stuck 1

# Fix position
execute at @s align xyz run tp @s ~0.5 ~0.5 ~0.5 0 0

# Sculk stuck
execute if score @s sculk_stuck matches 16.. run tag @s add sculkstuck
execute if score @s sculk_stuck matches 16.. run scoreboard players set @s sculk_stuck 0
execute at @s[tag=infect,tag=sculkstuck] if block ~ ~ ~ #sculk:infectable run tag @s remove sculkstuck


execute at @s if block ~ ~ ~ #sculk:infectable run setblock ~ ~ ~ sculk

tag @s remove infect