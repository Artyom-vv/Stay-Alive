# Те, кто играют в картошку
tag @a[team=lobby] add miniGame_players

# Настройки игроков
	# Игроки
	team join potares @a[tag=miniGame_players]
	# Вода
	team join potato @r[tag=miniGame_players]
	# Прочее
	gamemode adventure @a[tag=miniGame_players]

# Для топа игроков
data remove storage tmp tmp
data remove storage top:players array

# Возобновляем игру
scoreboard players set *p_game_timer p_timer 3200
function lobby:potato/predicates/reset
scoreboard players set p_game p_game 1