execute store result score *players temp if entity @a[tag=!spect,team=potatores]
execute if score *players temp matches ..1 as @a[team=potaters] run function lobby:potato/add_to_top
execute if score *players temp matches ..1 run function lobby:potato/endgame