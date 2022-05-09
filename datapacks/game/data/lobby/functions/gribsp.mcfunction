# summon armor_stand ~ ~ ~ {Tags:["grib_new"]}
# data modify entity @e[tag=grib_new,limit=1] ArmorItems[3] set from storage minecraft:grib 2
# tag @e[tag=grib_new] remove grib_new
function lobby:setmarker
kill @s