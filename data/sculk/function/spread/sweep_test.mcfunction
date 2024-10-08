$execute positioned $(pos) run function sculk:spread/check
$execute unless entity @s[tag=fail] run tp @s $(pos)
execute unless entity @s[tag=fail] run tag @s add infect
tag @s remove fail