scoreboard players add @s node_stage 1
scoreboard players set @s sculk_timer 110

$scoreboard players remove .mass HIVEMIND $(mass)

function sculk:blocks/mechanics/spreadtendrils_data_update

# Particles & Sounds
playsound minecraft:entity.warden.sonic_charge master @a[distance=..100] ~ ~ ~ 3 0.8
playsound minecraft:block.beacon.power_select master @a[distance=..100] ~ ~ ~ 3 0.8
execute at @s[scores={node_stage=2}] run particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @a
execute at @s[scores={node_stage=3..4}] run particle sonic_boom ~ ~ ~ 0.5 0.5 0.5 1 4 force @a
execute at @s[scores={node_stage=5..6}] run particle sonic_boom ~ ~ ~ 1.5 1.5 1.5 1 10 force @a
execute at @s[scores={node_stage=7}] run particle sonic_boom ~ ~ ~ 3 3 3 1 30 force @a