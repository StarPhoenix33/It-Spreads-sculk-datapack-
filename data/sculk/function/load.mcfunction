scoreboard objectives add HIVEMIND dummy
execute unless score .setup HIVEMIND matches 1 run function sculk:hivemind_setup

scoreboard objectives add sculk_steps dummy
scoreboard objectives add sculk_direction dummy
scoreboard objectives add sculk_stuck dummy
scoreboard objectives add sculk_timer dummy
scoreboard objectives add node_stage dummy
scoreboard objectives add infected_blocks dummy
scoreboard objectives add temp dummy
scoreboard players set #10 temp 10

schedule function sculk:loop 20 replace