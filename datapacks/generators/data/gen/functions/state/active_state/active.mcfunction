execute positioned ~ ~0.8 ~ align xyz run kill @e[tag=text,dy=2.5,dz=0,dx=0]
function gen:repair/predicates/end
tag @s remove need_fuel
tag @s remove need_wire
tag @s remove need_scheme
tag @s add isActive