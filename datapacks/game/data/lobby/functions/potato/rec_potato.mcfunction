title @a[team=potares] clear

scoreboard players operation @s p_timer = @p[team=potato] p_timer

# Переопределяем картоху
team join potares @a[team=potato]
team join potato @s

tellraw @a[team=potares] [{"selector":"@s","color":"red"},{"text":" с картохой!","color":"white"}]

title @s times 15 30 15
title @s title [{"text":"У вас ","color":"green"},{"text":"КАРТОШКА!","color":"red"}]
title @s subtitle [{"text":"Ударьте любого игрока!","color":"red"}]

item replace entity @a[team=potares] armor.head with air
item replace entity @s armor.head with tnt{Enchantments:[{id:"binding_curse",lvl:1}]}

playsound minecraft:entity.item.pickup ambient @s ~ ~ ~ 100

effect clear @s minecraft:weakness
effect give @s minecraft:glowing 3 0 true

advancement revoke @a from sa:potato_hit