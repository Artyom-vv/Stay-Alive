scoreboard players add @s things.timer 1
execute at @s run particle minecraft:dragon_breath ~ ~ ~ 0.3 1 0.3 0 1 force @a[distance=..10]
execute if score @s things.timer matches 200.. at @s run function features:things/tech/totem/used