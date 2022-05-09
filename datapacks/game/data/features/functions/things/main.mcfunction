execute as @a[predicate=gen:shift,team=general] at @s as @e[tag=totem,distance=..2,tag=isWork] run function features:things/tech/totem/use
execute as @e[tag=totem,tag=isWork] at @s run particle dust 1 1 1 1 ~ ~ ~ 0.3 1 0.3 0 1 force @a[distance=..15]
