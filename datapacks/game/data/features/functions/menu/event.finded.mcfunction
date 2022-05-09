scoreboard players set *len menu 0
scoreboard players set *spin menu 0
execute if score @s return matches 0 run data modify storage menu mans[0].inventory set from entity @s Inventory

clear @s
say finded