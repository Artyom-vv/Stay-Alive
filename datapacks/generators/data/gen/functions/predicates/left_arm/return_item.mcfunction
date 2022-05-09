execute if data entity @s SelectedItem run function gen:predicates/left_arm/return_with_yellow_shulker
execute unless data entity @s SelectedItem run item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air