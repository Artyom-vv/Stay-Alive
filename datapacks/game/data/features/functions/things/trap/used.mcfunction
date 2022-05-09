execute at @s if block ~ ~ ~ stone_pressure_plate run setblock ~ ~ ~ air
kill @s[tag=trap]
effect give @a[distance=..0.7] glowing 7 1 true
effect give @a[distance=..0.7] slowness 7 100 true
effect give @a[distance=..0.7] blindness 5 1 true
execute as @a[distance=..0.7] at @s run tp @s ~ ~ ~ ~ 90