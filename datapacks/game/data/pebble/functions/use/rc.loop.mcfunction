scoreboard players remove @s pebdist 1
# particle flame ~ ~ ~ 0 0 0 0 1
execute if entity @e[dx=0,tag=pebble.usable] run scoreboard players set @s pebdist 0
execute as @e[dx=0,tag=pebble.usable] run function pebble:use/finish
execute if score @s pebdist matches 1.. positioned ^ ^ ^1 run function pebble:use/rc.loop