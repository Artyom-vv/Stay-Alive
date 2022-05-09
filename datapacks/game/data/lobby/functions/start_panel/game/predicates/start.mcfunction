function lobby:start_panel/game/signs/scheme/game_start/is.active
schedule function lobby:start_panel/game/signs/scheme/game_start/standart 3t
execute if entity @a[scores={will_murderer=1..}] unless score *canPlay game matches 1 run function features:atthestart
execute unless entity @a[scores={will_murderer=1..}] run tellraw @a [{"text":"["},{"text":"Stay Alive","color": "red"},{"text":"] "},{"text":"Вы не выбрали маньяка"}]
execute unless score *game_tmp_start tmp matches 1 if score *canPlay game matches 1 run tellraw @a [{"text":"["},{"text":"Stay Alive","color": "red"},{"text":"] "},{"text":"Игра уже идёт! Вы можете воспользоваться мини-играми для ожидания"}]
scoreboard players reset *game_tmp_start tmp