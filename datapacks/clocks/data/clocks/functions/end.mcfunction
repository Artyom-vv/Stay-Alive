# Таймер
scoreboard players set bossbar clock 0
bossbar set clock visible false
scoreboard players set minutes clock 0
scoreboard players set seconds clock 0

execute if score *canPlay game matches 1 run function features:game_end/time_end

# Время суток
execute unless score *game_tmp_end tmp matches 1 run time set day
execute unless score *game_tmp_end tmp matches 1 run function features:endgame
execute if score *game_tmp_end tmp matches 1 run schedule function features:endgame 6s

scoreboard players reset *game_tmp_end tmp


# Заметка:
# execute unless score *game_tmp_end tmp matches 1 - В том случае, если мы выполняем действие в любом варианте, но не прерывании игры из-за таймера
# execute if score *game_tmp_end tmp matches 1 -Если мы выполняем действие, когда игра прервалась из-за таймера