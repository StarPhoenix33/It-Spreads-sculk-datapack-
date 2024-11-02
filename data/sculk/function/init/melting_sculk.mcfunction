#execute align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:["sculk","melt"]}
execute unless score @s sculk_timer matches 0.. store result score @s sculk_timer run random value 10..60
execute unless block ~ ~ ~ #sculk:sculk_variants run setblock ~ ~ ~ sculk replace