scoreboard players set *spin menu 1
scoreboard players remove *len menu 1
execute store result score *this menu run data get storage menu mans[0].id

execute if score *this menu = *perebor menu run function features:menu/event.finded
execute if score *spin menu matches 1 run data modify storage menu mans append from storage menu mans[0]
execute if score *spin menu matches 1 run data remove storage menu mans[0]
execute if score *len menu matches 1.. unless score *this menu = *perebor menu run function features:menu/perebor2