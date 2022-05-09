scoreboard players set max rng 3
function rng:rng
scoreboard players add calc rng 1

execute if score calc rng matches 1 run function gen:sounds/repair/sound1
execute if score calc rng matches 2 run function gen:sounds/repair/sound2
execute if score calc rng matches 3 run function gen:sounds/repair/sound3
execute if score calc rng matches 4 run function gen:sounds/repair/sound4