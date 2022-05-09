data modify storage text_compile health set value '{"text":""}'
data modify storage text_compile between_1 set value '{"text":"                                      "}'
data modify storage text_compile gen_progress set value '{"text":""}'

execute if entity @s[team=general] if entity @e[tag=gen,distance=..1.5,limit=1,scores={gen_c_detail=1..}] run data modify storage text_compile between_1 set value '{"text":"§l §r§l §r§l §r§l §r§l §r§l §r§l §r§l §r§l §r§l §r§l §r§l §r§l §r§l §r§l §r§l §r§l §r§l §r§l §r§l §r§l §r§l §r"}'
execute if entity @s[team=general] if entity @e[tag=gen,distance=..1.5,limit=1] unless score @e[tag=gen,distance=..1.5,limit=1] gen_c_detail matches 1.. run data modify storage text_compile between_1 set value '{"text":"  §r§l §r§l §r§l §r§l §r§l §r§l §r§l§ §r§l§"}'
execute if entity @s[team=murderer] if entity @e[tag=gen,distance=..1.5,limit=1] unless score @e[tag=gen,distance=..1.5,limit=1] gen_c_detail matches 1.. run data modify storage text_compile between_1 set value '{"text":"  §r§l §r§l §r§l §r§l §r§l §r§l §r§l §r§l§ §r§l§"}'


execute as @e[tag=gen,sort=nearest,distance=..1.5,limit=1] run tag @s add this
function gen:repair/display
tag @e[tag=gen,tag=this] remove this

function ds:health/promote

# ВЫВОД СООБЩЕНИЙ
title @s actionbar [{"storage":"text_compile","nbt":"health","interpret": true},{"storage":"text_compile","nbt":"between_1","interpret": true},{"storage":"text_compile","nbt":"gen_progress","interpret": true}]