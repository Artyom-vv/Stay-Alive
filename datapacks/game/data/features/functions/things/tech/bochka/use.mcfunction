#/data get storage tmp fill
#/execute store result storage tmp fill int 1 run scoreboard players get @s fuel
#item modify entity @p[tag=raycaster] weapon.mainhand minecraft:fkfuel


execute store result score *player fueltech run data get entity @p[tag=raycaster] SelectedItem.tag.fill
execute store result score *bochka fueltech run scoreboard players get @s fuel
# summ player*bochka
scoreboard players operation *tmp fueltech = *player fueltech
scoreboard players operation *tmp fueltech += *bochka fueltech
#
scoreboard players operation *playerfuel fueltech = *tmp fueltech
scoreboard players set @s fuel 0
execute if score *playerfuel fueltech matches 51.. run function features:things/tech/bochka/lishee
#edit
execute store result storage tmp fill int 1 run scoreboard players get *playerfuel fueltech
item modify entity @p[tag=raycaster] weapon.mainhand minecraft:fkfuel
# scoreboard players set *tmp2 fueltech 50
# scoreboard players operation *tmp2 fueltech -= *tmp fueltech
#execute if score *tmp2 fueltech matches 1.. run function features:things/tech/bochka/sliv
