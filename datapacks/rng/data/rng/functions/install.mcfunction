scoreboard objectives add const dummy
scoreboard objectives add rng dummy

execute store result score seed rng run time query gametime
scoreboard players set 1103515245 const 1103515245
scoreboard players set 32768 const 32768
scoreboard players set 12345 const 12345
scoreboard players set -1 const -1
