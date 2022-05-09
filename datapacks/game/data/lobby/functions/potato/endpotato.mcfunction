# Тут лишь визуальчик
function lobby:potato/predicates/detonate

# Настройки
gamemode spectator @s
team join potato_dead @s
	# Игрокам
	clear @a[tag=miniGame_players]

# xp бар
xp set @a[tag=miniGame_players] 0 levels
xp set @a[tag=miniGame_players] 0 points

# В топик
function lobby:potato/add_to_top
# Проверка на последнего игрока
function lobby:potato/predicates/check_new_part