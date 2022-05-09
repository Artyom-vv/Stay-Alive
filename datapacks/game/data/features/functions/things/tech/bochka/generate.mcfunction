kill @e[tag=bochka]
kill @e[tag=FuelVillager]
execute at @e[tag=bochka.gen] run fill ~ ~ ~ ~ ~1 ~ air
execute at @e[tag=bochka.gen,sort=random,limit=3] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,ArmorItems:[{},{},{},{Count:1b,id:"minecraft:apple",tag:{CustomModelData:5}}],NoGravity:1,Tags:["bochka","isWork"]}
execute at @e[tag=bochka] run fill ~ ~ ~ ~ ~1 ~ barrier
execute at @e[tag=bochka] run summon minecraft:villager ~ ~ ~0.5 {Silent:1b,NoAI:1,Tags:["FuelVillager"],NoGravity:1}
effect give @e[tag=FuelVillager] minecraft:resistance 9999 100 true
execute as @e[tag=FuelVillager] run function features:things/tech/bochka/randfuel