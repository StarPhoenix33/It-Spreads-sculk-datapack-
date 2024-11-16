# Check surrounding sensors
execute as @n[tag=sculk,tag=sensor,distance=..8] run scoreboard players add @s temp 1
execute if score @n[tag=sculk,tag=sensor,distance=..8] temp matches 6.. run return fail

# Mass
execute unless score .mass HIVEMIND matches 20.. run return fail
scoreboard players remove .mass HIVEMIND 10

# Place sensor
setblock ~ ~ ~ sculk_sensor replace
execute unless entity @n[tag=sculk,tag=sensor,distance=..8] run summon marker ~ ~ ~ {Tags:["sculk","sensor"]}

function sculk:spread/node_infection_report with entity @s data.node