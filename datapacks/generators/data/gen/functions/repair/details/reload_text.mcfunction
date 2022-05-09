execute positioned ~ ~ ~ align xyz run kill @e[tag=text,dy=2.5,dz=0,dx=0]

execute if entity @s[tag=need_wire] if entity @s[tag=!need_fuel,tag=!need_scheme] run function gen:repair/predicates/text/groups/text/1
execute if entity @s[tag=need_scheme] if entity @s[tag=!need_fuel,tag=!need_wire] run function gen:repair/predicates/text/groups/text/2

execute if entity @s[tag=need_wire,tag=need_scheme] if entity @s[tag=!need_fuel] run function gen:repair/predicates/text/groups/text/3

execute if entity @s[tag=need_wire,tag=need_fuel] if entity @s[tag=!need_scheme] run function gen:repair/predicates/text/groups/text/5
execute if entity @s[tag=need_scheme,tag=need_fuel] if entity @s[tag=!need_wire] run function gen:repair/predicates/text/groups/text/6

execute if entity @s[tag=need_fuel] if entity @s[tag=!need_wire,tag=!need_scheme] run function gen:repair/predicates/text/groups/text/4
