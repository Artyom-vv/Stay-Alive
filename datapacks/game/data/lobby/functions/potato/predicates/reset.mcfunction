# Возобновляем таймер на одну партию
function lobby:potato/predicates/reset_part

# Боссбар, отображающий таймер на всю игру
execute store result bossbar 102 max run scoreboard players get *p_game_timer p_timer
bossbar set minecraft:102 visible true
bossbar set minecraft:102 players @a[tag=miniGame_players]
tellraw @a[tag=miniGame_players] ["",{"text":"\n----  ","obfuscated":true,"color":"gold"},{"text":"ГОРЯЧАЯ КАРТОШКА","color":"yellow"},{"text":"  ----","obfuscated":true,"color":"gold"},{"text":"\n"},{"text":"\n Передайте картошку другому\n игроку, пока таймер не иссяк!\n","color":"#dbf8a6"}]

# Ставим картоху
execute as @p[team=potato] run function lobby:potato/rec_potato