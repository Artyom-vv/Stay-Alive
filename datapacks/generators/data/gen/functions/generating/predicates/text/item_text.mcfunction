setblock 0 0 0 oak_sign
data modify storage minecraft:item icon_status set value '[{"text":" "},{"text":"x","color":"red"},{"text":" "}]'

data modify block 0 0 0 Text1 set value '[{"storage":"item","nbt":"icon","color":"white","interpret":true},{"storage":"item","nbt":"icon_status","interpret":true},{"storage":"item","nbt":"text","color":"gold","interpret":true}]'
summon armor_stand ~ ~ ~ {Small:1b,Tags:["gen_dependencies","gen_text_item","text","new"],CustomNameVisible:1b,CustomName:'{"text":"Шаблон"}',Invisible:1b,Marker:1b,NoGravity:1b}
data modify entity @e[tag=gen_text_item,tag=new,limit=1] CustomName set from block 0 0 0 Text1
setblock 0 0 0 air
tag @e[tag=gen_text_item] remove new