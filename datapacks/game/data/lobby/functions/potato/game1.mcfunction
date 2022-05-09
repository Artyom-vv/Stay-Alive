# Эффекты
effect give @a[team=potares] minecraft:weakness 1 100 true

# Условия на игру
	# Конец
	execute if score *p_game_timer p_timer matches ..0 run function lobby:potato/endgame
	# Если таймер всей игры ещё не кончился + проверка смертей
	execute if score p_game p_game matches 1 if score *p_game_timer p_timer matches 1.. run function lobby:potato/game_is_work

# Таймер на всю игру
execute store result bossbar minecraft:102 value run scoreboard players get *p_game_timer p_timer

scoreboard players remove @p[scores={p_timer=1..},team=potato] p_timer 1
execute if entity @p[team=potato,scores={p_timer=1..}] run xp add @a[tag=miniGame_players] -1 points

advancement revoke @a from sa:potato_hit