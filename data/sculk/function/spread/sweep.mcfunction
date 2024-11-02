execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^ ^1"}
execute at @s[tag=!infect,tag=burrow] run function sculk:spread/sweep_test {"pos":"^ ^-1 ^"}
$execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^$(a)1 ^"}
$execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^$(b)1 ^"}
$execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^$(a)1 ^1"}
$execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^$(b)1 ^1"}
#execute at @s[tag=!infect] run function sculk:spread/sweep_test {"pos":"^ ^ ^"}