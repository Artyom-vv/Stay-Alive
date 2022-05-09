tag @a[team=!general,team=!murderer,team=!dead] add miniGame_players

tag @a[team=potato] remove potatoNosec
tag @r[tag=!spect,team=potaters] add potatoNosec
scoreboard players set @a[team=potaters] p_death 0
scoreboard players set @p[tag=potatoNosec] p_timer 800
execute as @p[tag=potatoNosec] run function lobby:potato/rec_potato

xp set @a[tag=miniGame_players] 108 levels

tag @a[tag=miniGame_players] remove miniGame_players
