execute unless predicate sculk:spread_chance run return fail

execute unless block ~1 ~ ~ #air if predicate sculk:direction_chance run tag @s add a
execute unless block ~-1 ~ ~ #air if predicate sculk:direction_chance run tp @s ~-1 ~ ~
execute unless block ~ ~ ~1 #air if predicate sculk:direction_chance run tp @s ~ ~ ~1
execute unless block ~ ~ ~-1 #air if predicate sculk:direction_chance run tp @s ~ ~ ~-1
execute unless block ~ ~1 ~ #air if predicate sculk:direction_chance run tp @s ~ ~1 ~
execute unless block ~ ~-1 ~ #air if predicate sculk:direction_chance run tp @s ~ ~-1 ~

setblock ~ ~ ~ sculk