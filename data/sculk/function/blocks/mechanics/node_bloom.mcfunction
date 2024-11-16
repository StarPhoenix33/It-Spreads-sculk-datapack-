# Spawn Tendrils
$execute store result score @s temp run random value 1..$(nodeMaxTendrils)
function sculk:blocks/place/spawn_tendrils with storage sculk:hivemind nodeTendrils

# Particles & Sounds
execute if score @s node_stage matches 1 run function sculk:visuals/particle_circle {"particle":"sculk_soul","pos":"^ ^ ^0.5","speed":012}
execute if score @s node_stage matches 2..3 run function sculk:visuals/particle_circle {"particle":"sculk_soul","pos":"^ ^ ^1","speed":015}
execute if score @s node_stage matches 4..5 run function sculk:visuals/particle_circle {"particle":"sculk_soul","pos":"^ ^ ^2","speed":02}
execute if score @s node_stage matches 6..7 run function sculk:visuals/particle_circle {"particle":"sculk_soul","pos":"^ ^ ^3","speed":025}
execute if score @s node_stage matches 6 run function sculk:visuals/particle_circle {"particle":"sculk_soul","pos":"^ ^ ^3.5","speed":035}
execute if score @s node_stage matches 7 run function sculk:visuals/particle_circle {"particle":"sculk_soul","pos":"^ ^ ^3.5","speed":04}

playsound block.sculk_catalyst.bloom block @a[distance=..100] ~ ~ ~ 2 1