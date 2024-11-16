# Mass
execute unless score .mass HIVEMIND matches 50.. run return fail
scoreboard players remove .mass HIVEMIND 20

# Place
setblock ~ ~ ~ sculk_shrieker[can_summon=false] replace
summon marker ~ ~ ~ {Tags:["sculk","shrieker","s_tick"]}


function sculk:spread/node_infection_report with entity @s data.node
function sculk:spread/node_infection_report with entity @s data.node