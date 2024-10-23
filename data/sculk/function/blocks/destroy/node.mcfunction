
particle sculk_soul ~ ~ ~ 0 0 0 0.5 50 force @a

playsound entity.warden.sonic_boom hostile @a[distance=..100] ~ ~ ~ 10 0.5
playsound entity.warden.death hostile @a[distance=..100] ~ ~ ~ 10 0.5


kill @e[tag=sculk,tag=nodemodel,distance=..0.1]
kill @s