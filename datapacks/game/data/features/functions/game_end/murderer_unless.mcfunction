title @a[tag=game_players] subtitle {"text":" "}
title @a[tag=game_players] times 10 40 10
title @a[tag=game_players] title {"text":"Маньяк умер!","color":"green"}

scoreboard players set *canPlay game 0
scoreboard players set *game game 0
schedule function features:shadow 3s
schedule function clocks:end 6s