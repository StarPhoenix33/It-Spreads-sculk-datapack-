$scoreboard players set @s temp $(count)
execute if entity @s[tag=sculk,tag=node] run scoreboard players add @s temp 1

function sculk:blocks/place/tendrils_recursive