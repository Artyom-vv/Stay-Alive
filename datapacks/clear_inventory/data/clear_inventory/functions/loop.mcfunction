loot spawn ~ ~ ~ loot clear_inventory:item
execute as @e[distance=0,type=minecraft:item,nbt={Item:{tag:{datapack_clear_inventory:1b}}},limit=1] run function clear_inventory:copy_nbt

data remove storage clear_inventory:core Inventory[0]
execute if data storage clear_inventory:core Inventory[] run function clear_inventory:loop