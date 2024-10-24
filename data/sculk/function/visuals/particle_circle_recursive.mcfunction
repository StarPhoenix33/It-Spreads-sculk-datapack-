$particle $(particle) $(pos) ^ ^ ^1000000000 0.00000000$(speed) 0 force @a
tp @s ~ ~ ~ ~4 ~
scoreboard players remove .spin temp 1

$execute at @s if score .spin temp matches 1.. run function sculk:visuals/particle_circle_recursive {"particle":"$(particle)","pos":"$(pos)","speed":$(speed)}