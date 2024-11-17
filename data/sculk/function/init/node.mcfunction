setblock ~ ~ ~ spawner replace
summon block_display ~ ~ ~ {Tags:["sculk","nodemodel","s_tick"],Passengers:[{id:"minecraft:block_display",Tags:["sculk","nodemodel"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.495f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:sculk_catalyst",Properties:{bloom:"true"}}},{id:"minecraft:block_display",Rotation:[-180F,90F],Tags:["sculk","nodemodel"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.495f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:sculk_catalyst",Properties:{bloom:"true"}}},{id:"minecraft:block_display",Rotation:[-90F,90F],Tags:["sculk","nodemodel"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.495f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:sculk_catalyst",Properties:{bloom:"true"}}},{id:"minecraft:block_display",Rotation:[90F,90F],Tags:["sculk","nodemodel"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.495f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:sculk_catalyst",Properties:{bloom:"true"}}},{id:"minecraft:block_display",Rotation:[0F,90F],Tags:["sculk","nodemodel"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.495f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:sculk_catalyst",Properties:{bloom:"true"}}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.495f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:sculk_catalyst",Properties:{bloom:"true"}}}

particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @a

scoreboard players set @s node_stage 1
scoreboard players set @s sculk_direction 0
scoreboard players set @s sculk_timer 0
scoreboard players set @s infected_blocks 0

# Hivemind
scoreboard players add .nodecount HIVEMIND 1
scoreboard players add .nodestages HIVEMIND 1

function sculk:blocks/mechanics/spreadtendrils_data_update
function sculk:hivemind/maximum_update

# Forceload
execute store result score @s temp run forceload query ~ ~
execute if score @s temp matches 1 run tag @s add preloaded
execute at @s[tag=!preloaded] run forceload add ~ ~

# Delete spreaders
kill @e[tag=sculk,tag=spreader,distance=..10]

execute align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~
tag @s add s_init