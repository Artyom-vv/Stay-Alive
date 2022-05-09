execute if score @s repair_delay matches 50.. unless entity @s[tag=repair30t] run function gen:repair/scores/delay/set_delay
execute if score @s[tag=repair30t] repair_delay matches 0.. run function gen:repair/scores/delay/delay
execute if score @s[tag=repair30t] repair_delay matches 30.. run function gen:repair/scores/delay/remove_delay
