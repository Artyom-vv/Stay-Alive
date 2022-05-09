scoreboard players set max rng 40
function rng:rng

scoreboard players set 4 temp 4
scoreboard players operation calc rng /= 4 temp

scoreboard players operation @s fuel_gen = calc rng