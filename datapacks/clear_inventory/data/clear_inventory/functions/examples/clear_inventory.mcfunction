data modify storage clear_inventory:core PickupDelay set value 35s

data modify storage clear_inventory:core Inventory append from entity @s Inventory[]

clear

function clear_inventory:start