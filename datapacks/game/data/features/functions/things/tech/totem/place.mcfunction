execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["totem","new","isWork"],Invisible:1b}
item replace entity @e[tag=new] armor.head with apple{CustomModelData:6}
tag @e remove new
tellraw @s "тотем размещен"
function features:things/tech/totem/glow