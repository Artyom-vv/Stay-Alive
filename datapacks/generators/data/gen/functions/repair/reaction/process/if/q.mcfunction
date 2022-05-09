execute unless data entity @s SelectedItem run item replace entity @s weapon.mainhand with barrier{CustomModelData:5,c:1,display:{Name:'{"text":""}'}}

tag @s add owner_item
execute if entity @s[scores={drop=1..}] as @e[type=item,nbt={Age:0s}] run function gen:repair/reaction/process/events/detect/q
tag @s remove owner_item
