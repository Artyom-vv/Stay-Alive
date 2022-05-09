scoreboard players reset @s fueltalk
scoreboard players set @s fueldist 6
tag @s add raycaster
execute anchored eyes positioned ^ ^ ^0.1 run function features:things/tech/bochka/rc.loop
tag @s remove raycaster