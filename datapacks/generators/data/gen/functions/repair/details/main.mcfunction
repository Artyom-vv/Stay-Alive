execute if entity @s[scores={click_villager=1..}] run function gen:repair/details/raycast/start
scoreboard players reset @s[scores={click_villager=1..}] click_villager

execute store result score *activeGenCount gen_progress if entity @e[tag=gen,tag=isActive]
execute if score *temp_gen_active tmp matches 1 run tellraw @a ["",{"text":"["},{"text":"Stay Alive","color":"red"},{"text":"]: \u0413\u0435\u043d\u0435\u0440\u0430\u0442\u043e\u0440\u043e\u0432 \u043f\u043e\u0447\u0438\u043d\u0435\u043d\u043e "},{"score":{"name":"*activeGenCount","objective":"gen_progress"},"color":"gold"},{"text":"/","color":"gray"},{"score":{"name":"*genCount","objective":"gen_progress"},"color":"yellow"}]
execute if score *temp_gen_active tmp matches 1 run scoreboard players reset *temp_gen_active tmp
execute if score *activeGenCount gen_progress = *genCount gen_progress if score *allGenActive gen_progress matches 0 run function features:all_gens_done