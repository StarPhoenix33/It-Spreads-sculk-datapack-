# Check
execute unless entity @n[type=tnt,distance=..4] unless entity @n[type=tnt_minecart,distance=..4] unless block ~1 ~ ~ #sculk:pass_check unless block ~-1 ~ ~ #sculk:pass_check unless block ~ ~1 ~ #sculk:pass_check unless block ~ ~-1 ~ #sculk:pass_check unless block ~ ~ ~1 #sculk:pass_check unless block ~ ~ ~-1 #sculk:pass_check run return fail


# PANIC MODE
scoreboard players set @s sculk_timer 120
effect give @a[distance=..12] darkness 10 0 false
execute as @a[gamemode=!creative,gamemode=!spectator,team=!Sculk,distance=..6] run damage @s 1 sonic_boom at ~ ~ ~

function sculk:blocks/place/tentacle


playsound entity.warden.roar block @a[distance=..100] ~ ~ ~ 2 0.8
playsound entity.warden.hurt block @a[distance=..100] ~ ~ ~ 2 0.5
playsound entity.warden.angry block @a[distance=..100] ~ ~ ~ 2 0.5
playsound entity.warden.attack_impact block @a[distance=..100] ~ ~ ~ 2 0.8
playsound block.sculk_shrieker.shriek block @a[distance=..100] ~ ~ ~ 2 0.5