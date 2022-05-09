data modify entity @s[nbt=!{Item:{tag:{c:1}}}] PickupDelay set value 0
data modify entity @s[nbt=!{Item:{tag:{c:1}}}] Owner set from entity @p[tag=owner_item]

tag @p[tag=owner_item] add this.from
execute as @e[tag=gen] run function gen:repair/reaction/search_gen
execute as @e[tag=is.linked] at @s run function gen:sounds/repair/random
execute as @e[tag=is.linked] at @s run tag @s remove circle_fp
function sa:id/tmp_remove

scoreboard players reset @a[tag=owner_item] drop
scoreboard players reset @a[tag=owner_item] circle_timer
tag @a[tag=owner_item] remove circle
tag @a[tag=owner_item] remove c_q
tag @a[tag=owner_item] remove c_f
clear @a[tag=owner_item] stick{c:1}