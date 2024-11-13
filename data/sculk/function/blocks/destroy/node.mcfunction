execute if score .nodecount HIVEMIND matches 1.. run scoreboard players remove .nodecount HIVEMIND 1
execute unless score .aggression HIVEMIND matches 40.. run scoreboard players operation .aggression HIVEMIND += @s node_stage
scoreboard players operation .nodestages HIVEMIND -= @s node_stage
execute unless score .nodestages HIVEMIND matches 0.. run scoreboard players set .nodestages HIVEMIND 0

particle sculk_soul ~ ~ ~ 0 0 0 0.5 50 force @a

playsound entity.warden.sonic_boom hostile @a[distance=..100] ~ ~ ~ 10 0.5
playsound entity.warden.death hostile @a[distance=..100] ~ ~ ~ 10 0.5

execute at @s[tag=!preloaded] run forceload remove ~ ~


kill @e[tag=sculk,tag=nodemodel,distance=..0.1]
kill @s