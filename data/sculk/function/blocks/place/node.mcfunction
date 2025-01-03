# MASS (Multiplied cost)
scoreboard players operation @s temp = .nodecount HIVEMIND
scoreboard players operation @s temp *= #500 temp
execute unless score .mass HIVEMIND >= @s temp run return fail

scoreboard players operation @s temp = .nodecount HIVEMIND
scoreboard players operation @s temp *= #100 temp
scoreboard players operation .mass HIVEMIND -= @s temp

# Spawn Node
summon minecraft:marker ~ ~ ~ {Tags:["sculk","node","s_tick"]}
execute as @n[tag=sculk,tag=node,tag=!s_init] run function sculk:init/node

function sculk:visuals/particle_circle {"particle":"sculk_soul","pos":"^ ^0.2 ^","speed":02}
function sculk:visuals/particle_circle {"particle":"sculk_soul","pos":"^ ^ ^","speed":025}
function sculk:visuals/particle_circle {"particle":"sculk_soul","pos":"^ ^-0.2 ^","speed":02}
playsound entity.warden.heartbeat block @a ~ ~ ~ 10 1
playsound minecraft:entity.warden.sonic_charge master @a[distance=..300] ~ ~ ~ 4 1 0.1
playsound minecraft:block.beacon.power_select master @a[distance=..300] ~ ~ ~ 4 1 0.1