execute at @s[tag=!infect] if predicate sculk:33_perc_chance run function sculk:spread/sweep_test {"pos":"^ ^-1 ^"}
execute at @s[tag=!infect] if predicate sculk:50_perc_chance run function sculk:spread/sweep_test {"pos":"^ ^1 ^"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^ ^1"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^-1 ^"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^1 ^"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^-1 ^1"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^1 ^1"}
execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^ ^-1"}

execute at @s[tag=infect] if predicate sculk:sweep_swap_chance run tag @s remove invertedsweep