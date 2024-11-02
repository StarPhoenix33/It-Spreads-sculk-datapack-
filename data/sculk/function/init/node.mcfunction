setblock ~ ~ ~ spawner replace
summon block_display ~ ~ ~ {Tags:["sculk","nodemodel","s_tick"],Passengers:[{id:"minecraft:block_display",Tags:["sculk","nodemodel"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.495f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:sculk_catalyst",Properties:{bloom:"true"}}},{id:"minecraft:block_display",Rotation:[-180F,90F],Tags:["sculk","nodemodel"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.495f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:sculk_catalyst",Properties:{bloom:"true"}}},{id:"minecraft:block_display",Rotation:[-90F,90F],Tags:["sculk","nodemodel"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.495f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:sculk_catalyst",Properties:{bloom:"true"}}},{id:"minecraft:block_display",Rotation:[90F,90F],Tags:["sculk","nodemodel"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.495f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:sculk_catalyst",Properties:{bloom:"true"}}},{id:"minecraft:block_display",Rotation:[0F,90F],Tags:["sculk","nodemodel"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.495f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:sculk_catalyst",Properties:{bloom:"true"}}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.495f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:sculk_catalyst",Properties:{bloom:"true"}}}

particle sonic_boom ~ ~ ~ 0 0 0 1 1 force @a

scoreboard players set @s node_stage 1
scoreboard players set @s sculk_direction 0
scoreboard players set @s infected_blocks 0

scoreboard players add .nodecount HIVEMIND 1

# Max Height Spread
#execute store result score @s temp run data get entity @s Pos[1]
#scoreboard players add @s temp 3
#execute store result entity @s data.maxHeight int 1 run scoreboard players get @s temp