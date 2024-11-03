# Sculk Sensor
execute if predicate sculk:sensor_chance unless entity @n[tag=sculk,tag=!tendril,distance=..1.5] run function sculk:blocks/place/sensor

# Sculk Shrieker
execute if predicate sculk:shrieker_chance unless entity @n[tag=sculk,tag=!tendril,distance=..1.5] unless entity @n[tag=sculk,tag=shrieker,distance=..8.5] run function sculk:blocks/place/shrieker
execute if entity @n[tag=sculk,tag=node,distance=..15] if predicate sculk:shrieker_chance if predicate sculk:50_perc_chance unless entity @n[tag=sculk,tag=!tendril,distance=..1.5] unless entity @n[tag=sculk,tag=shrieker,distance=..5.5] run function sculk:blocks/place/shrieker