function rng:rng

tag @s add level_

execute if score calc rng matches 1 run tag @s add level1
execute if score calc rng matches 2 run tag @s add level2
execute if score calc rng matches 3 run tag @s add level3
execute if score calc rng matches 4 run tag @s add level4

execute positioned ~ ~0.8 ~ run function gen:generating/level