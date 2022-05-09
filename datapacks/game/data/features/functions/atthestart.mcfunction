# Временный тег тем, кто начал игру
tag @a add tmp
	# Сообщение, чтобы люди ожидали начала
	tellraw @a[tag=tmp] [{"text":"["},{"text":"Stay Alive","color": "red"},{"text":"] "},{"text":"Загрузка игры"}]
	tag @a[tag=tmp] add game_players
	tag @a[tag=tmp] remove lobby
	effect clear @a[tag=tmp] saturation

	title @a[tag=tmp] title {"text":"\uE067"}
	title @a[tag=tmp] times 20 100 20

	effect give @a[tag=tmp] slowness 5 255 true
	# Спавним игроков и прогружаем чанки
	schedule function features:spawn_gamers 2s
	# Запускаем игру, спавним все механики
	schedule function features:start 4s
	# Можно играть
	scoreboard players set *canPlay game 1

	# Отображаем всем игрокам время
	bossbar set clocks players @a[tag=tmp]

	# Пиздим рецепты, чтобы всякие GhostFBU и Limonchik_ не ломали игру
	recipe take @a[tag=tmp] *
tag @a[tag=tmp] remove tmp

scoreboard players set *game_tmp_start tmp 1