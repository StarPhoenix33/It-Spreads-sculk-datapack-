# Check
execute unless entity @n[type=#sculk:node_panic_cause,distance=..4] unless block ~1 ~ ~ #sculk:pass_check unless block ~-1 ~ ~ #sculk:pass_check unless block ~ ~1 ~ #sculk:pass_check unless block ~ ~-1 ~ #sculk:pass_check unless block ~ ~ ~1 #sculk:pass_check unless block ~ ~ ~-1 #sculk:pass_check run return fail


# PANIC MODE
scoreboard players set @s sculk_timer 120
effect give @a[gamemode=!creative,gamemode=!spectator,team=!Sculk,distance=..12] darkness 10 0 false
execute as @a[gamemode=!creative,gamemode=!spectator,team=!Sculk,distance=..6] run damage @s 1 sonic_boom at ~ ~ ~

execute if predicate sculk:50_perc_chance run function sculk:blocks/place/tentacle
execute if predicate sculk:50_perc_chance run function sculk:blocks/place/tentacle
execute if predicate sculk:50_perc_chance run function sculk:blocks/place/tentacle

# Particles & Sounds
function sculk:visuals/particle_circle {"particle":"trial_omen","pos":"^ ^ ^3","speed":01}
execute if score @s node_stage matches 6..7 run function sculk:visuals/particle_circle {"particle":"trial_omen","pos":"^ ^ ^5","speed":015}
playsound entity.warden.roar block @a[distance=..100] ~ ~ ~ 2 0.8
playsound entity.warden.hurt block @a[distance=..100] ~ ~ ~ 2 0.5
playsound entity.warden.angry block @a[distance=..100] ~ ~ ~ 2 0.5
playsound entity.warden.attack_impact block @a[distance=..100] ~ ~ ~ 2 0.8
playsound block.sculk_shrieker.shriek block @a[distance=..100] ~ ~ ~ 2 0.5