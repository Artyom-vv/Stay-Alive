# Кол-во игроков
execute store result score *players temp if entity @a[team=potares]

# Если игрок один, то добавляем его в топ и заканчиваем игру
execute if score *players temp matches ..1 run function lobby:potato/predicates/only_last_player
# А если нет, то перевыбираем картоху
execute if score *players temp matches 2.. as @r[team=potares] run function lobby:potato/predicates/start_new_part