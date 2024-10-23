# Node Shell
function sculk:blocks/mechanics/node_shell

# Mining Fatigue
execute if score @s node_stage matches 1..3 run effect give @a[distance=..6] mining_fatigue 3 0
execute if score @s node_stage matches 4..5 run effect give @a[distance=..8] mining_fatigue 3 0
execute if score @s node_stage matches 6..7 run effect give @a[distance=..10] mining_fatigue 5 0


# Destroy
execute unless block ~ ~ ~ spawner run function sculk:blocks/destroy/node
