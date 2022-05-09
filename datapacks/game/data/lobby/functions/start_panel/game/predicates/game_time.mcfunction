execute unless score *switch_game_time lobby matches 1..4 run scoreboard players set *switch_game_time lobby 1
function lobby:start_panel/game/signs/scheme/game_time/is.active
scoreboard players add *switch_game_time lobby 1
execute if score *switch_game_time lobby matches 4.. run scoreboard players set *switch_game_time lobby 1
execute if score *switch_game_time lobby matches 1 run scoreboard players set *view_time lobby 10
execute if score *switch_game_time lobby matches 2 run scoreboard players set *view_time lobby 20
execute if score *switch_game_time lobby matches 3 run scoreboard players set *view_time lobby 25
schedule function lobby:start_panel/game/signs/scheme/game_time/standart 3t