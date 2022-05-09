execute as @e[tag=gen,tag=repair_detail,tag=!isActive,sort=nearest,distance=..1.5,limit=1] unless score @s gen_progress = active gen_progress run tag @s add this
execute if entity @e[tag=repair_detail] run function gen:repair/scores/main
tag @e[tag=gen,tag=this] remove this