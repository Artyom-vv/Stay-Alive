tag @s remove raycaster

execute at @e[tag=filter] as @e[tag=gen,limit=1,sort=nearest] run tag @s add gen-raycast
scoreboard players operation @e[tag=gen-raycast] ID.gens = @s ID.players

tag @s add this.player

execute as @e[tag=gen-raycast,limit=1] if score @s gen_c_detail matches 1.. run function gen:repair/details/promote3
execute as @e[tag=gen-raycast,limit=1] unless score @s gen_c_detail matches 1.. run function gen:repair/details/promote

tag @e remove gen-raycast
tag @s remove this.player