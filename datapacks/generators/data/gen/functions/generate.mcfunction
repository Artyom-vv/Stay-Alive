function gen:generating/get_players

function gen:generating/part
function gen:generating/limit/reset

execute if score *survivors online matches ..4 run function gen:generating/limit/cycle
execute if score *survivors online matches ..4 run scoreboard players operation *genCount gen_progress = *survivors online
execute if score *survivors online matches 5.. as @e[tag=this_part,tag=!end] at @s run function gen:generating/promote2
execute if score *survivors online matches 5.. run scoreboard players set *genCount gen_progress 5
execute if score *survivors online matches 5.. run scoreboard players set *activeGenCount gen_progress 0
scoreboard players set *allGenActive gen_progress 0
execute as @e[tag=gen] run function gen:generating/predicates/fuel
tag @e remove this.generate
scoreboard players set @e[tag=gen] gen_progress 0