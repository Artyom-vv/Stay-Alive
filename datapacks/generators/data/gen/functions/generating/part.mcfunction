scoreboard players set max rng 5
function rng:rng

execute if score calc rng matches 1 run tag @e[tag=marker1] add this_part
execute if score calc rng matches 2 run tag @e[tag=marker2] add this_part
execute if score calc rng matches 3 run tag @e[tag=marker3] add this_part
execute if score calc rng matches 4 run tag @e[tag=marker4] add this_part
execute if score calc rng matches 5 run tag @e[tag=marker5] add this_part
