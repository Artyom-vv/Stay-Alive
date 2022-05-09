execute if score @s dbd_hp_anim matches 6 run data modify storage minecraft:text_compile health set value '[{"text":"\\uE056\\uE061\\uE061"}]'
execute if score @s dbd_hp_anim matches 5 run data modify storage minecraft:text_compile health set value '[{"text":"\\uE057 \\uE060 \\uE060"}]'
execute if score @s dbd_hp_anim matches 4 run data modify storage minecraft:text_compile health set value '[{"text":"\\uE058 \\uE059 \\uE059"}]'
execute if score @s dbd_hp_anim matches 3 run data modify storage minecraft:text_compile health set value '{"text":""}'
execute if score @s dbd_hp_anim matches 0 run tag @s add dead