scoreboard players reset @s pebtalk
scoreboard players set @s pebdist 6
tag @s add raycaster
execute anchored eyes positioned ^ ^ ^0.1 run function pebble:use/rc.loop
tag @s remove raycaster