# Mass
execute unless score .mass HIVEMIND matches 20.. run return fail
scoreboard players remove .mass HIVEMIND 10

# Check surrounding sensors
scoreboard players set @s temp 0
execute at @e[tag=sculk,tag=sensor,distance=..8] run scoreboard players add @s temp 1
execute if score @s temp matches 3.. run return fail

# Place sensor
setblock ~ ~ ~ sculk_sensor replace
summon marker ~ ~ ~ {Tags:["sculk","sensor"]}

scoreboard players remove @s[scores={sculk_steps=1..}] sculk_steps 1
function sculk:spread/node_infection_report with entity @s data.node