team join lobby @a[tag=miniGame_players]

scoreboard players reset * p_timer
scoreboard players reset *p_game_timer p_timer

clear @a[tag=miniGame_players]

xp set @a[tag=miniGame_players] 0 levels
xp set @a[tag=miniGame_players] 0 points

# execute as @p[team=potato] run function lobby:potato/predicates/detonate
execute as @a[tag=miniGame_players] run function features:whoved/get_tag

# Тут текст
	# Шаблон
	function features:whoved/predicates/leader
	# Места
	data modify storage scores text set value '[{"text":""}]'
	data modify storage place text set value '[{"text":"1 место - "}]'
	execute as @p[tag=1top] run function features:whoved/display
	data modify storage scores text set value '[{"text":""}]'
	data modify storage place text set value '[{"text":"2 место - "}]'
	execute as @p[tag=2top] run function features:whoved/display
	data modify storage scores text set value '[{"text":""}]'
	data modify storage place text set value '[{"text":"3 место - "}]'
	execute as @p[tag=3top] run function features:whoved/display

function features:whoved/reset

gamemode adventure @a[tag=miniGame_players]
tp @a[tag=miniGame_players] @e[tag=Lobby,limit=1]
tellraw @a[tag=miniGame_players] [{"text":"\n[","color":"white"},{"text":"ГОРЯЧАЯ КАРТОШКА","color":"red"},{"text":"]: ","color":"white"},{"text":"Игра закончена!","color":"#dbf8a6"}]
bossbar set 102 visible false

scoreboard players set p_game p_game 0
tag @a remove miniGame_players