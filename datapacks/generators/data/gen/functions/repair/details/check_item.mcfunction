execute if data entity @s SelectedItem.tag.wire if entity @e[tag=gen-raycast,tag=need_wire] run scoreboard players set @e[tag=gen-raycast] gen_c_detail 1
execute if data entity @s SelectedItem.tag.wire if entity @e[tag=gen-raycast,tag=need_wire] run clear @s iron_block{wire:1} 1
execute if data entity @s SelectedItem.tag.scheme if entity @e[tag=gen-raycast,tag=need_scheme] run scoreboard players set @e[tag=gen-raycast] gen_c_detail 2
execute if data entity @s SelectedItem.tag.scheme if entity @e[tag=gen-raycast,tag=need_scheme] run clear @s iron_block{scheme:1} 1
execute if data entity @s SelectedItem.tag.fuel if entity @e[tag=gen-raycast,tag=need_fuel] run scoreboard players set @e[tag=gen-raycast] gen_c_detail 3
execute if data entity @s SelectedItem.tag.fuel if entity @e[tag=gen-raycast,tag=need_fuel] run clear @s iron_block{fuel:1} 1

# Провод - 1
# scheme - 2
# fuel - 3

function gen:repair/basic/text