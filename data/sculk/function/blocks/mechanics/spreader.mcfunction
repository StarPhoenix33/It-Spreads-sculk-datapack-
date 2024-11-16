execute unless score .spreaders HIVEMIND > .maxspreaders HIVEMIND run scoreboard players add .spreaders HIVEMIND 1
execute if score .spreaders HIVEMIND > .maxspreaders HIVEMIND as @e[tag=sculk,tag=spreader,limit=1,sort=random] run function sculk:delete
execute if score .spreaders HIVEMIND > .maxspreaders HIVEMIND run scoreboard players operation .spreaders HIVEMIND = .maxspreaders HIVEMIND

execute unless block ~ ~ ~ sculk run function sculk:delete
execute if score @s sculk_timer matches ..0 run function sculk:delete

particle glow_squid_ink ~ ~2 ~ 0 2 0 0 10 force @a[gamemode=!survival,gamemode=!adventure]