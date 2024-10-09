# Spread Chances (function cancel)
execute unless entity @s[tag=sculkstuck] unless predicate sculk:spread_chance run return fail
execute if entity @s[tag=sculkstuck] unless predicate sculk:spread_chance_sculkstuck run return fail

execute unless score @s sculk_stuck matches 0.. run scoreboard players set @s sculk_stuck 0

# Turn randomly
execute store result score @s sculk_direction run random value 1..8
function sculk:spread/turn

execute if predicate sculk:spread_chance run tp @s ~ ~ ~ facing entity @r[distance=..8,gamemode=!creative,gamemode=!spectator]
execute at @s run tp @s ~ ~ ~ ~ 0

# Sweep for infectable blocks & tp to valid ones
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^ ^1"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^-1 ^"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^1 ^"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^-1 ^1"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^1 ^1"}
execute at @s[tag=!infect,tag=!sculkstuck] run scoreboard players add @s sculk_stuck 1

# Fix position
execute at @s align xyz run tp @s ~0.5 ~0.5 ~0.5 0 0

# Sculk-stuck fix (if the sculk is blocked from spreading by preexisting sculk)
execute if score @s sculk_stuck matches 8.. run tag @s add sculkstuck
execute at @s[tag=infect] if block ~ ~ ~ #sculk:infectable run scoreboard players set @s sculk_stuck 0
execute at @s[tag=infect,tag=sculkstuck] if block ~ ~ ~ #sculk:infectable run tag @s remove sculkstuck

# Place sculk
execute at @s[tag=infect] if block ~ ~ ~ #sculk:infectable run scoreboard players remove @s[scores={sculk_steps=1..}] sculk_steps 1
execute at @s[tag=infect] if block ~ ~ ~ #sculk:infectable run function sculk:spread/place

# Particles & Sounds
execute at @s[tag=infect,tag=!sculkstuck] run particle sculk_charge{roll:0} ~ ~0.6 ~ 0.3 0.1 0.3 0 4 force @a
execute at @s[tag=infect,tag=sculkstuck] run particle sculk_charge{roll:0} ~ ~0.55 ~ 0.2 0.1 0.2 0 2 force @a
execute at @s[tag=infect,tag=!sculkstuck] run playsound block.sculk.spread block @a[distance=..100] ~ ~ ~ 1 0.8
execute at @s[tag=infect,tag=sculkstuck] run playsound block.sculk.charge block @a[distance=..100] ~ ~ ~ 0.3 1

execute unless block ~ ~ ~ #sculk:sculk_variants unless block ~ ~ ~ #sculk:infectable run scoreboard players set @s sculk_steps 0

kill @s[scores={sculk_steps=..0}]
tag @s remove infect