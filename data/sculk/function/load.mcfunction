scoreboard objectives add HIVEMIND dummy
execute unless score .setup HIVEMIND matches 1 run function sculk:hivemind_setup

scoreboard objectives add sculk_steps dummy
scoreboard objectives add sculk_direction dummy
scoreboard objectives add sculk_stuck dummy
scoreboard objectives add sculk_timer dummy
scoreboard objectives add node_stage dummy
scoreboard objectives add temp dummy

schedule function sculk:loop 20 replace