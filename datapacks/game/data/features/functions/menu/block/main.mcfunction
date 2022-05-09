scoreboard players set *suc blockitems 0
execute unless entity @s[nbt={Inventory:[{Slot:27b,tag:{blockslot:1}}]}] run function features:menu/block/return_item
execute unless entity @s[nbt={Inventory:[{Slot:28b,tag:{blockslot:1}}]}] run function features:menu/block/return_item
execute unless entity @s[nbt={Inventory:[{Slot:29b,tag:{blockslot:1}}]}] run function features:menu/block/return_item
execute unless entity @s[nbt={Inventory:[{Slot:30b,tag:{blockslot:1}}]}] run function features:menu/block/return_item
execute unless entity @s[nbt={Inventory:[{Slot:31b,tag:{blockslot:1}}]}] run function features:menu/block/return_item
execute unless entity @s[nbt={Inventory:[{Slot:32b,tag:{blockslot:1}}]}] run function features:menu/block/return_item
execute unless entity @s[nbt={Inventory:[{Slot:33b,tag:{blockslot:1}}]}] run function features:menu/block/return_item
execute unless entity @s[nbt={Inventory:[{Slot:34b,tag:{blockslot:1}}]}] run function features:menu/block/return_item
execute unless entity @s[nbt={Inventory:[{Slot:35b,tag:{blockslot:1}}]}] run function features:menu/block/return_item
execute if entity @s[nbt={SelectedItem:{tag:{blockslot:1}}}] run item replace entity @s weapon.mainhand with air