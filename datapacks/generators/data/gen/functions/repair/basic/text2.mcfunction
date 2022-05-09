execute if data entity @s SelectedItem.tag.wire if entity @e[tag=gen-raycast,tag=!need_wire] run tellraw @s [{"text":"[Генератор]: ","color":"green"},{"text":"Деталь не требуется","color":"white"}]
execute if data entity @s SelectedItem.tag.scheme if entity @e[tag=gen-raycast,tag=!need_scheme] run tellraw @s [{"text":"[Генератор]: ","color":"green"},{"text":"Деталь не требуется","color":"white"}]
execute if data entity @s SelectedItem.tag.fuel if entity @e[tag=gen-raycast,tag=!need_fuel] run tellraw @s [{"text":"[Генератор]: ","color":"green"},{"text":"Деталь не требуется","color":"white"}]
