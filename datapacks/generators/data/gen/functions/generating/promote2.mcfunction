tag @s add end
function gen:generating/rotation

scoreboard players set max rng 4
execute as @e[tag=gen,tag=!level_] run function gen:generating/property
execute as @e[tag=gen] at @s run function gen:generating/cmd
