execute unless predicate sculk:spread_chance run return fail


# Turns randomly
execute store result score @s sculk_direction run random value 1..8
function sculk:spread/turn

# Sweep tests for infectable blocks & move to them
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^ ^1"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^1 ^"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^-1 ^"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^1 ^1"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^-1 ^1"}

# Fix position
execute at @s align xyz run tp @s ~0.5 ~0.5 ~0.5 0 0


execute at @s if block ~ ~ ~ #sculk:infectable run setblock ~ ~ ~ sculk

tag @s remove infect