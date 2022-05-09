tag @s remove repair_detail
tag @a[team=general,distance=..7,predicate=gen:shift] add this.pl
function gen:repair/scores/end
tag @a remove this.pl

execute if score @s gen_c_detail matches 1 run tag @s remove need_wire
execute if score @s gen_c_detail matches 2 run tag @s remove need_scheme
execute if score @s gen_c_detail matches 3 run tag @s remove need_fuel

execute positioned ~ ~0.8 ~ run function gen:repair/details/reload_text
function gen:repair/details/reload_repair

execute if entity @s[tag=!need_wire,tag=!need_scheme,tag=!need_fuel] run tag @s add isActive
execute if entity @s[tag=isActive] run function gen:repair/predicates/end