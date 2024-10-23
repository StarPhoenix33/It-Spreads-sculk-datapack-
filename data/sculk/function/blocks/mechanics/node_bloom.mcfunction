# Spawn Tendrils
execute if score @s node_stage matches 1..2 store result storage sculk:hivemind nodeTendrils.count int 1 run random value 1..2
execute if score @s node_stage matches 3..4 store result storage sculk:hivemind nodeTendrils.count int 1 run random value 1..3
execute if score @s node_stage matches 5 store result storage sculk:hivemind nodeTendrils.count int 1 run random value 2..4
execute if score @s node_stage matches 6 store result storage sculk:hivemind nodeTendrils.count int 1 run random value 2..5
execute if score @s node_stage matches 7 store result storage sculk:hivemind nodeTendrils.count int 1 run random value 2..6
function sculk:blocks/place/spawn_tendrils with storage sculk:hivemind nodeTendrils

# Particles & Sounds

playsound block.sculk_catalyst.bloom block @a[distance=..100] ~ ~ ~ 1 1