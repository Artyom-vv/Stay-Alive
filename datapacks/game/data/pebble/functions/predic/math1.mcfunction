 
 scoreboard players remove @s temp 1

execute as @e[tag=peb_motion] at @s run tp @s ^ ^0.07 ^0.35
#say debug
execute if score @s temp matches 1.. run function pebble:predic/math1
execute if score @s temp matches ..0 run function pebble:tech/2partspawn








