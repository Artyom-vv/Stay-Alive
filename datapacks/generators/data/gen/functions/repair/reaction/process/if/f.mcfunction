execute unless data entity @s SelectedItem run item replace entity @s weapon.mainhand with barrier{CustomModelData:5,c:1,display:{Name:'{"text":""}'}}

execute if data entity @s Inventory[{Slot:-106b}] run function gen:repair/reaction/process/events/detect/f