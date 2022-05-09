setblock 0 0 0 yellow_shulker_box

data modify storage tmp item set from entity @s Inventory[{tag:{axe:1}}]
data modify storage tmp item.Slot set value 0b

scoreboard players set @r[team=murderer] random.item_back 1

data modify block 0 0 0 Items append from storage tmp item
loot give @p[scores={random.item_back=1}] mine 0 0 0


setblock 0 0 0 air

tag @s add mrd
function sa:keep_items/slots_clear
tellraw @p[scores={random.item_back=1}] [{"text":"Вы получили "},{"storage":"tmp","nbt":"item.tag.display.Name","interpret": true,"color":"gold"},{"text":". Игрокам нельзя брать вещи маньяка."}]
scoreboard players reset * random.item_back

tellraw @s [{"text":"У вас отобрали "},{"storage":"tmp","nbt":"item.tag.display.Name","interpret": true,"color":"gold"},{"text":". Игрокам нельзя брать вещи маньяка."}]


data remove storage tmp item
