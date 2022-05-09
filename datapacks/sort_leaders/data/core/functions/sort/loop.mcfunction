scoreboard players set #max top -2147483648

#Получаем максимальное число
scoreboard players operation #max top > @e[tag=bsort] scores

scoreboard players add #top top 1
execute as @e[tag=bsort] if score @s scores = #max top run function core:sort/finded_max

#Если остались ещё неотсортированные сущности
execute if entity @e[tag=bsort,limit=1] run function core:sort/loop