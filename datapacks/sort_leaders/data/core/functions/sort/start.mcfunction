#Кто будет сортироваться и получаем кол-во сущностей
#bsort = bubble sort
tag @e add bsort

#Обнуляем кол-во занятых мест
scoreboard players set #top top 0
execute if entity @e[tag=bsort,limit=1] run function core:sort/loop

#output
execute if entity @e[scores={top=1},limit=1] run say top1: @e[scores={top=1}]
execute if entity @e[scores={top=2},limit=1] run say top2: @e[scores={top=2}]
execute if entity @e[scores={top=3},limit=1] run say top3: @e[scores={top=3}]

scoreboard players reset * top