execute as @e[type=minecraft:pufferfish,tag=Grib] at @s run function lobby:gribsp
execute as @a[nbt={Inventory:[{tag:{Grib:1}}]}] run function lobby:getgrib

execute as @a[tag=lobby] run function lobby:settings

execute as @a[tag=!pl] run function sa:id/new_player