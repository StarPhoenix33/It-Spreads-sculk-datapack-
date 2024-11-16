$execute positioned $(x) $(y) $(z) run scoreboard players add @n[tag=sculk,tag=node,distance=..1] infected_blocks 1
$execute if predicate sculk:infected_block_share_chance positioned $(x) $(y) $(z) run scoreboard players add @e[tag=sculk,tag=node,distance=1..200,limit=1,sort=random] infected_blocks 1
