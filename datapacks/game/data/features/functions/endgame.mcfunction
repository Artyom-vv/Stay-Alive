# Если игра закончилась из-за таймера, то нам нужно переключать день во время тёмной плашки, то есть через 6 секунд. Если ты посмотришь на последовательность действий в
# features:game_end, то поймёшь всё. 
execute if score *game_tmp_end tmp matches 1 run time set day

execute unless entity @e[tag=Lobby] run say метка телепортации к лобби исчезла

# Очистка генераторов
function gen:clear
# Убираем метки на тп
execute as @a[team=murderer,tag=game_players] run function ds:predicates/block_move/reset
# Убираем капканы
execute as @e[tag=trap] run function features:things/trap/destroy

# Настройки:
	function features:game_end/tags/reset
	clear @a[tag=game_players]

	gamemode adventure @a[tag=game_players]
	effect give @a[tag=game_players] saturation 999999 10 true
	scoreboard players reset * ID.murderer


	tag @a[tag=game_players] add lobby
	team join lobby @a[tag=game_players]
	tp @a[tag=game_players] @e[tag=Lobby,limit=1]
	tag @a[tag=game_players] remove game_players

## Плагин
summon minecraft:armor_stand 0 10 0 {CustomName:'{"text":"*Game:End"}'}
