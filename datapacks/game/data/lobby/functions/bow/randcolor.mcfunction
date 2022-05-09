tag @s add color
scoreboard players set max rng 4
function rng:rng
#scoreboard players operation calc rng += *3 const

execute if score calc rng matches 1 run tag @s add ball1
execute if score calc rng matches 2 run tag @s add ball2
execute if score calc rng matches 3 run tag @s add ball3
execute if score calc rng matches 4 run tag @s add ball4

execute if score calc rng matches 1 run data modify entity @s Color set value 14
execute if score calc rng matches 2 run data modify entity @s Color set value 4
execute if score calc rng matches 3 run data modify entity @s Color set value 10
execute if score calc rng matches 4 run data merge entity @s {CustomName:'{"text":"jeb_"}'}





