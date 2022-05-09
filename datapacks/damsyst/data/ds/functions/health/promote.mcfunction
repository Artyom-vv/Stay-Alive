execute if entity @s[team=general] run function ds:health/display
execute if entity @s[team=dead,tag=!dead] if score @s dbd_hp_anim matches 0.. run function ds:health/display