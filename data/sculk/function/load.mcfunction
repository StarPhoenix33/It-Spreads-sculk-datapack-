team add Sculk

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
scoreboard players set #20 temp 20
scoreboard players set #100 temp 100
scoreboard players set #200 temp 200
scoreboard players set #300 temp 300
scoreboard players set #500 temp 500

schedule function sculk:loop 20 replace