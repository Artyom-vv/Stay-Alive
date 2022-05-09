##################
execute if score @s dbd_hp matches 3 if score @s dbd_hp_anim matches 0 if score @s dbd_hp_dop matches 0 run data modify storage minecraft:text_compile health set value '[{"text":"\\uE053\\uE053\\uE053"}]'
execute if score @s dbd_hp matches 2 if score @s dbd_hp_anim matches 0 if score @s dbd_hp_dop matches 0 run data modify storage minecraft:text_compile health set value '[{"text":"\\uE053\\uE053\\uE055"}]'
execute if score @s dbd_hp matches 1 if score @s dbd_hp_anim matches 0 if score @s dbd_hp_dop matches 0 run data modify storage minecraft:text_compile health set value '[{"text":"\\uE053\\uE055\\uE055"}]'
##################


execute if score @s dbd_hp matches 2 if score @s dbd_hp_anim matches 0 if score @s dbd_hp_dop matches 1 run data modify storage minecraft:text_compile health set value '[{"text":"\\uE053\\uE053\\uE054"}]'
execute if score @s dbd_hp matches 1 if score @s dbd_hp_anim matches 0 if score @s dbd_hp_dop matches 1 run data modify storage minecraft:text_compile health set value '[{"text":"\\uE053\\uE054\\uE055"}]'
execute if score @s dbd_hp matches 1 if score @s dbd_hp_anim matches 0 if score @s dbd_hp_dop matches 2 run data modify storage minecraft:text_compile health set value '[{"text":"\\uE053\\uE054\\uE054"}]'
# = = /
# = / -
# = / /


# = = -
# = - -
# ---
execute if score @s dbd_hp_anim matches 1.. if score @s dbd_hp matches 1 if score @s dbd_hp_dop matches 1 run function ds:health/health4
execute if score @s dbd_hp_anim matches 1.. if score @s dbd_hp matches 1 if score @s dbd_hp_dop matches 2 run function ds:health/health6

execute if score @s dbd_hp_anim matches 1.. if score @s dbd_hp matches 2 if score @s dbd_hp_dop matches 0 run function ds:health/health1
execute if score @s dbd_hp_anim matches 1.. if score @s dbd_hp matches 1 if score @s dbd_hp_dop matches 0 run function ds:health/health2
execute if score @s dbd_hp_anim matches 1.. if score @s dbd_hp matches 0 run function ds:health/health3

function ds:predicates/health/animation/timer
# :D