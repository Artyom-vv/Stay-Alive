scoreboard players set @a[team=lobby] p_timer 0
scoreboard players set *p_game_timer p_timer 3200

team modify potaters friendlyFire true
team join potaters @a[team=lobby]

execute store result bossbar 102 max run scoreboard players get *p_game_timer p_timer
bossbar set minecraft:102 visible true
bossbar set minecraft:102 players @a[team=potaters]
tellraw @a[team=potaters] ["",{"text":"\n----  ","obfuscated":true,"color":"gold"},{"text":"ГОРЯЧАЯ КАРТОШКА","color":"yellow"},{"text":"  ----","obfuscated":true,"color":"gold"},{"text":"\n"},{"text":"\n Передайте картошку другому\n игроку, пока таймер не иссяк!\n","color":"#dbf8a6"}]

gamemode adventure @a[team=!general,team=!murderer,team=!dead]

data remove storage tmp tmp
data remove storage top:players array
function lobby:potato/predicates/reset

scoreboard players set p_game p_game 1