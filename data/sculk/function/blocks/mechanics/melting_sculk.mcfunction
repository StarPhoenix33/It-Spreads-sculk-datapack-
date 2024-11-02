particle item{item:"sculk"} ~ ~ ~ 0.33 0.33 0.33 0.01 3 force @a

# Melt
execute unless block ~ ~ ~ #sculk:sculk_variants run scoreboard players set @s sculk_timer 0
execute if score @s sculk_timer matches 0 if block ~ ~ ~ #sculk:sculk_variants run function sculk:blocks/destroy/melt
execute if score @s sculk_timer matches 0 run function sculk:delete