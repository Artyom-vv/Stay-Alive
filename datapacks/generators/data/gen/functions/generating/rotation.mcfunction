scoreboard players set max rng 4
function rng:rng

execute if score calc rng matches 1 run function gen:generating/place/west
execute if score calc rng matches 2 run function gen:generating/place/south
execute if score calc rng matches 3 run function gen:generating/place/east
execute if score calc rng matches 4 run function gen:generating/place/north