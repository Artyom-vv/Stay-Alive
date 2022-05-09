
setblock 0 0 0 minecraft:yellow_shulker_box

execute unless entity @s[nbt={Inventory:[{Slot:27b,tag:{blockslot:1}}]}] run item replace block 0 0 0 container.0 from entity @s container.27
execute unless entity @s[nbt={Inventory:[{Slot:28b,tag:{blockslot:1}}]}] run item replace block 0 0 0 container.0 from entity @s container.28
execute unless entity @s[nbt={Inventory:[{Slot:29b,tag:{blockslot:1}}]}] run item replace block 0 0 0 container.0 from entity @s container.29
execute unless entity @s[nbt={Inventory:[{Slot:30b,tag:{blockslot:1}}]}] run item replace block 0 0 0 container.0 from entity @s container.30
execute unless entity @s[nbt={Inventory:[{Slot:31b,tag:{blockslot:1}}]}] run item replace block 0 0 0 container.0 from entity @s container.31
execute unless entity @s[nbt={Inventory:[{Slot:32b,tag:{blockslot:1}}]}] run item replace block 0 0 0 container.0 from entity @s container.32
execute unless entity @s[nbt={Inventory:[{Slot:33b,tag:{blockslot:1}}]}] run item replace block 0 0 0 container.0 from entity @s container.33
execute unless entity @s[nbt={Inventory:[{Slot:34b,tag:{blockslot:1}}]}] run item replace block 0 0 0 container.0 from entity @s container.34
execute unless entity @s[nbt={Inventory:[{Slot:35b,tag:{blockslot:1}}]}] run item replace block 0 0 0 container.0 from entity @s container.35

function features:menu/block/fix.items
setblock 0 0 0 air