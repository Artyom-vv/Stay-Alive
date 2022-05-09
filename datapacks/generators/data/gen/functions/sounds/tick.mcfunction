execute if score @s genSounds_start matches 1 run function gen:sounds/active/start
execute if score @s genSounds_start matches 1..39 run scoreboard players add @s genSounds_start 1
execute if score @s genSounds_start matches 40.. if score @s genSounds_cycle matches 1..200 run scoreboard players add @s genSounds_cycle 1

execute if score @s genSounds_cycle matches 2 run function gen:sounds/active/cycle
execute if score @s genSounds_cycle matches 200.. run scoreboard players set @s genSounds_cycle 1