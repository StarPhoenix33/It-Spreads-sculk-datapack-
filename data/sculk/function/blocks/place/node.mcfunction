# Mass
execute unless score .mass HIVEMIND matches 300.. run return fail
scoreboard players remove .mass HIVEMIND 100

# Spawn Node
summon minecraft:marker ~ ~ ~ {Tags:["sculk","node","s_tick"]}

execute unless score .aggression HIVEMIND matches 40.. run scoreboard players add .aggression HIVEMIND 1

function sculk:visuals/particle_circle {"particle":"sculk_soul","pos":"^ ^0.2 ^","speed":02}
function sculk:visuals/particle_circle {"particle":"sculk_soul","pos":"^ ^ ^","speed":025}
function sculk:visuals/particle_circle {"particle":"sculk_soul","pos":"^ ^-0.2 ^","speed":02}
playsound entity.warden.heartbeat block @a ~ ~ ~ 10 1
playsound minecraft:entity.warden.sonic_charge master @a[distance=..100] ~ ~ ~ 3 1
playsound minecraft:block.beacon.power_select master @a[distance=..100] ~ ~ ~ 3 1


tag @s remove spawnvein