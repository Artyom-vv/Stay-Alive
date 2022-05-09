execute unless entity @a[tag=miniGame_players] run tag @a[team=!general,team=!murderer,team=!dead] add miniGame_players
execute unless entity @a[tag=miniGame_players] run scoreboard players set *p_tmp tmp 1

team join lobby @a[tag=miniGame_players]
scoreboard players set p_game p_game 0
scoreboard players reset @a[tag=miniGame_players] p_timer
scoreboard players reset *p_game_timer p_timer


clear @a[tag=miniGame_players]

xp set @a[tag=miniGame_players] 0 levels
xp set @a[tag=miniGame_players] 0 points

execute as @p[tag=potatoNosec] run function lobby:potato/predicates/detonate
execute as @a[tag=miniGame_players] run function features:whoved/get_tag

function features:whoved/predicates/leader

data modify storage scores text set value '[{"text":""}]'
data modify storage place text set value '[{"text":"1 место - "}]'
execute as @p[tag=1top] run function features:whoved/display
data modify storage scores text set value '[{"text":""}]'
data modify storage place text set value '[{"text":"2 место - "}]'
execute as @p[tag=2top] run function features:whoved/display
data modify storage scores text set value '[{"text":""}]'
data modify storage place text set value '[{"text":"3 место - "}]'
execute as @p[tag=3top] run function features:whoved/display

execute as @a run function features:whoved/reset

tellraw @a [{"text":"\n[","color":"white"},{"text":"ГОРЯЧАЯ КАРТОШКА","color":"red"},{"text":"]: ","color":"white"},{"text":"Игра закончена!","color":"#dbf8a6"}]

tag @a[tag=spect] remove spect
bossbar set 102 visible false

tp @a[tag=miniGame_players] @e[tag=Lobby,limit=1]
gamemode adventure @a[tag=miniGame_players]

tag @p[tag=potatoNosec] remove potatoNosec

execute if score *p_tmp tmp matches 1 run tag @a[tag=miniGame_players] remove miniGame_players
execute if score *p_tmp tmp matches 1 run scoreboard players reset *p_tmp tmp