execute align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["bochka.gen"]}
#summon minecraft:armor_stand ~ ~ ~ {Invisible:1,ArmorItems:[{},{},{},{Count:1b,id:"minecraft:apple",tag:{CustomModelData:5}}],NoGravity:1,Tags:["bochka","isWork"]}
tellraw @s "бочка размещена"
function features:things/tech/bochka/glow