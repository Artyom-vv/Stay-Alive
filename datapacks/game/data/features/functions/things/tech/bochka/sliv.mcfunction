scoreboard players operation *player fueltech += *tmp2 fueltech
execute store result storage tmp fill int 1 run scoreboard players get *tmp2 fueltech
item modify entity @p[tag=raycaster] weapon.mainhand minecraft:fkfuel
scoreboard players set @s fuel 0

say sliv