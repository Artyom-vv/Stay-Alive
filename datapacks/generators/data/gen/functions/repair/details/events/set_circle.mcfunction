# @s = ИГРОК

tag @s add circle

scoreboard players set max rng 2
function rng:rng

tag @e[tag=gen-raycast] add circle_fp

scoreboard players operation @s circle_timer = *const circle_timer

execute if score calc rng matches 1 run tag @s add c_f
execute if score calc rng matches 2 run tag @s add c_q