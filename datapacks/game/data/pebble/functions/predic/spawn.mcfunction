tag @e[tag=pebble] remove complete
execute at @e[tag=pebble.usable] run tag @e[tag=pebble,distance=..1.5] add complete
execute at @e[tag=pebble,limit=1,tag=!complete,distance=3..,sort=random] run summon minecraft:villager ~ ~-1.3 ~ {Silent:1b,NoAI:1,Tags:["pebble.usable"],NoGravity:1}
