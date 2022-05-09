# марки для генерации
execute as @e[tag=gen_marker,tag=!marked] at @s run function gen:markers/place
# Починка
execute as @a[team=general] at @s run function gen:repair/main
# Отображение в actiobar
execute as @a at @s run function gen:display
# Подготовка
execute as @a at @s run function gen:repair/details/main

# звуки
execute as @e[tag=gen,tag=isActive] at @s run function gen:sounds/tick
# effects
execute as @e[tag=gen,tag=isActive] at @s run function gen:effects/tick

# настройки
function gen:settings
execute as @a if data entity @s Inventory[{Slot:-106b}] run function gen:predicates/left_arm/return_item
clear @a[tag=!c_q,tag=!c_f] barrier{c:1}
kill @e[nbt={Item:{tag:{c:1}}}]
# ✓