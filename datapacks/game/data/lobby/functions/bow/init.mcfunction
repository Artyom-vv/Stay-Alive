scoreboard objectives add bow_game dummy
scoreboard objectives add bow_timer dummy
scoreboard objectives add bow_timer_b dummy
scoreboard objectives add bow_count dummy
scoreboard objectives add bow_kills totalKillCount
scoreboard objectives add bow_anim dummy
team add noname
team modify noname nametagVisibility never
bossbar set minecraft:101 max 800
bossbar add 101 [{"text":"Шарики"}]
bossbar set 101 name [{"text":"Стреляй в шары","color":"white"}]
bossbar set minecraft:101 style notched_20
bossbar set minecraft:101 color yellow
