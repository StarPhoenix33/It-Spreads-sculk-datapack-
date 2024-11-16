# Sculk Sensor
execute if predicate sculk:sensor_chance unless entity @n[tag=sculk,tag=!tendril,tag=!spreader,distance=..1.5] run function sculk:blocks/place/sensor

# Sculk Shrieker
execute if predicate sculk:shrieker_chance unless entity @n[tag=sculk,tag=!tendril,tag=!spreader,distance=..1.5] unless entity @n[tag=sculk,tag=shrieker,distance=..9.5] run function sculk:blocks/place/shrieker