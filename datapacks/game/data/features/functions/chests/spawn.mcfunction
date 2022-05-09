tag @e[tag=chestsource] remove isSpawned
execute at @e[tag=chestmarker] run setblock ~ ~ ~ air
execute at @e[tag=chestmarker,limit=17,sort=random] run function features:chests/getchest