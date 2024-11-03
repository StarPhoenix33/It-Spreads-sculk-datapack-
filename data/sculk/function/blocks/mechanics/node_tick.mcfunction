# Destroy
execute unless block ~ ~ ~ spawner run function sculk:blocks/destroy/node

# Panic
execute if score @s node_stage matches 4.. if score @s sculk_timer matches 0 run function sculk:blocks/mechanics/node_panic_start

# Node Shell
function sculk:blocks/mechanics/node_shell
execute at @s[scores={sculk_timer=100..}] run function sculk:blocks/mechanics/node_shell

# Mining Fatigue
execute if score @s node_stage matches 1..3 run effect give @a[distance=..6,gamemode=!spectator] mining_fatigue 3 0
execute if score @s node_stage matches 4..5 run effect give @a[distance=..8,gamemode=!spectator] mining_fatigue 3 0
execute if score @s node_stage matches 6..7 run effect give @a[distance=..10,gamemode=!spectator] mining_fatigue 5 0


particle glow_squid_ink ~ ~8 ~ 0 5 0 0 12 force @a[gamemode=!survival,gamemode=!adventure]