# Нельзя подбирать маньяку
execute as @e[type=item, nbt={Item:{tag:{general:1}}}] at @s run data modify entity @s Owner set from entity @p[team=general] UUID
execute as @e[type=item, nbt={Item:{tag:{axe:1}}}] at @s run data modify entity @s Owner set from entity @p[team=murderer] UUID

execute as @a[team=murderer] if data entity @s Inventory[{tag:{general:1}}] run function sa:keep_items/give_item_player
execute as @a[team=general] if data entity @s Inventory[{tag:{axe:1}}] run function sa:keep_items/give_item_murderer
