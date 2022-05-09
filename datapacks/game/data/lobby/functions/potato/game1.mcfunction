tag @a[team=!general,team=!murderer,team=!dead] add miniGame_players

execute as @a[tag=miniGame_players,scores={p_hit=1..}] at @s if entity @p[tag=potatoNosec,scores={p_udar=1..}] run function lobby:potato/rec_potato
scoreboard players set @a[tag=miniGame_players,team=!dead] p_fall 0
effect give @a[tag=miniGame_players,tag=!potatoNosec] minecraft:weakness 1 100 true
scoreboard players set @a[tag=miniGame_players,team=!dead] p_hit 0
scoreboard players set @a[tag=miniGame_players,team=!dead] p_udar 0

execute if score *p_game_timer p_timer matches ..0 run function lobby:potato/endgame
execute if score p_game p_game matches 1 as @p[tag=potatoNosec] if score @s p_timer matches 0 run function lobby:potato/endpotato
execute if score p_game p_game matches 1 as @p[tag=potatoNosec,scores={p_death=1..}] at @s run function lobby:potato/endpotato

team join potato_dead @a[tag=spect]
gamemode spectator @a[tag=spect]

execute if score *p_game_timer p_timer matches 1.. run scoreboard players remove *p_game_timer p_timer 1
execute store result bossbar minecraft:102 value run scoreboard players get *p_game_timer p_timer

scoreboard players remove @p[scores={p_timer=1..},tag=potatoNosec] p_timer 1
execute if entity @p[team=potato,scores={p_timer=1..}] run xp add @a[tag=miniGame_players] -1 points

tag @a[tag=miniGame_players] remove miniGame_players
