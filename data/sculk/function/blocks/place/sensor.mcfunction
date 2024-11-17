# Check surrounding sensors
execute as @n[tag=sculk,tag=sensor,distance=..8] run scoreboard players add @s temp 1
execute if score @n[tag=sculk,tag=sensor,distance=..8] temp matches 4.. run return fail

# Mass
execute unless score .mass HIVEMIND matches 20.. run return fail
scoreboard players remove .mass HIVEMIND 5

# Place sensor
setblock ~ ~ ~ sculk_sensor replace
execute unless entity @n[tag=sculk,tag=sensor,distance=..8] run summon marker ~ ~ ~ {Tags:["sculk","sensor"]}

execute as @s[tag=sculk,tag=tendril,tag=sculkstuck,scores={sculk_steps=1..}] run scoreboard players remove @s sculk_steps 1

function sculk:spread/node_infection_report with entity @s data.node