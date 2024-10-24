# Spawn Tendrils
$execute store result storage sculk:hivemind nodeTendrils.count int 1 run random value 1..$(nodeStage)
function sculk:blocks/place/spawn_tendrils with storage sculk:hivemind nodeTendrils

# Particles & Sounds
execute if score @s node_stage matches 1 run function sculk:visuals/particle_circle {"particle":"sculk_soul","pos":"^ ^ ^0.5","speed":012}
execute if score @s node_stage matches 2..3 run function sculk:visuals/particle_circle {"particle":"sculk_soul","pos":"^ ^ ^1","speed":015}
execute if score @s node_stage matches 4..5 run function sculk:visuals/particle_circle {"particle":"sculk_soul","pos":"^ ^ ^2","speed":02}
playsound block.sculk_catalyst.bloom block @a[distance=..100] ~ ~ ~ 1 1