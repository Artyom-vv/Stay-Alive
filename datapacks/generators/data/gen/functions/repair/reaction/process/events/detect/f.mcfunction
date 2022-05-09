tag @s add this.from
execute as @e[tag=gen] run function gen:repair/reaction/search_gen
execute as @e[tag=is.linked] at @s run function gen:sounds/repair/random
execute as @e[tag=is.linked] at @s run tag @s remove circle_fp
function sa:id/tmp_remove

tag @s remove circle
tag @s remove c_q
tag @s remove c_f
scoreboard players reset @s circle_timer