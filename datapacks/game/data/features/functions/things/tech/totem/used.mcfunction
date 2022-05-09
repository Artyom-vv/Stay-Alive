tag @s remove isWork
playsound minecraft:entity.husk.ambient ambient @a[distance=..10] ~ ~ ~ 100 0.7
scoreboard players set max rng 3
function rng:rng
execute if score calc rng matches 1 run loot spawn ~ ~ ~ loot minecraft:medicine_box
execute if score calc rng matches 2 run effect give @a[team=general] speed 20 1 true
execute if score calc rng matches 3 run effect give @a[team=murderer] glowing 15 1 true
item replace entity @s armor.head with apple{CustomModelData:7}