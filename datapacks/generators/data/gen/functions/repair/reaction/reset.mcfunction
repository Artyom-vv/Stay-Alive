scoreboard players reset @s circle_timer
tag @s add this.from
execute as @e[tag=gen] run function gen:repair/reaction/search_gen
execute as @e[tag=is.linked] at @s run function gen:repair/reaction/details/drop
function sa:id/tmp_remove
tag @s remove circle
tag @s remove c_f
tag @s remove c_q
clear @s barrier{c_q:1}