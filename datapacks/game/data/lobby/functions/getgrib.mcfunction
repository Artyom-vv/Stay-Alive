clear @s minecraft:player_head{Grib:1}
execute as @e[tag=isGrib] at @s unless entity @s[nbt={ArmorItems:[{tag:{Grib:1}}]}] run function lobby:snyatgrib
scoreboard players add @s CountGrib 1
playsound minecraft:item.armor.equip_leather ambient @a[distance=..8] ~ ~ ~ 100
playsound minecraft:item.armor.equip_leather ambient @s ~ ~ ~ 100
playsound entity.player.levelup player @s ~ ~ ~ 1 1 1