ride @n[predicate=sculk:tentacle_target,distance=..1] mount @s
execute on passengers run effect give @s[type=player,team=!Sculk,gamemode=!creative,gamemode=!spectator] mining_fatigue 2 1 false
execute on passengers run damage @s[type=player,team=!Sculk,gamemode=!creative,gamemode=!spectator] 2 in_wall