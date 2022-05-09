scoreboard players set max rng 40
function rng:rng
scoreboard players add calc rng 20

execute store result storage fuel fill int 1 run scoreboard players get calc rng
loot give @s loot fuel







