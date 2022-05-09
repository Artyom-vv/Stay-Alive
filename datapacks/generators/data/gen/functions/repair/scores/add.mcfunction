# починка
execute unless data entity @s SelectedItem.tag.wrench run scoreboard players add @e[tag=this] gen_progress 3
execute if data entity @s SelectedItem.tag.wrench run scoreboard players add @e[tag=this] gen_progress 5

# delay
scoreboard players add @s repair_delay 1

# display

execute as @e[tag=this] at @s if score @s gen_progress >= active gen_progress run function gen:repair/check

