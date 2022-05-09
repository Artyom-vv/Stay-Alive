title @a[tag=game_players] subtitle {"text":" "}
title @a[tag=game_players] times 10 40 10
title @a[tag=game_players] title {"text":"Время  вышло","color":"green"}

scoreboard players set *canPlay game 0
scoreboard players set *game game 0

# чёрный фон
schedule function features:shadow 3s

scoreboard players set *game_tmp_end tmp 1