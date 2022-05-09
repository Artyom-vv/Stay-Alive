# ДАДА МОЖНО БЫЛО ПО ID, НО Я ДАЛБАЁБ

particle dust 3 3 3 1 ~ ~0 ~ 0.01 0.01 0.01 1 20

execute if block ~ ~-1 ~ air run say нельзя ставить генераторы в воздухе.
execute if block ~ ~-1 ~ air run kill @s

execute if entity @s unless block ~ ~ ~1 air run say Дистанция от блоков должна быть больше 1.
execute if entity @s unless block ~ ~ ~1 air run kill @s
execute if entity @s unless block ~ ~ ~-1 air run say Дистанция от блоков должна быть больше 1.
execute if entity @s unless block ~ ~ ~-1 air run kill @s
execute if entity @s unless block ~1 ~ ~ air run say Дистанция от блоков должна быть больше 1.
execute if entity @s unless block ~1 ~ ~ air run kill @s
execute if entity @s unless block ~-1 ~ ~ air run say Дистанция от блоков должна быть больше 1.
execute if entity @s unless block ~-1 ~ ~ air run kill @s

execute if entity @s[tag=marker1] if score *marker1 gen_markers = 5 gen_markers run kill @s
execute if entity @s[tag=marker1] if score *marker1 gen_markers = 5 gen_markers run say Нельзя ставить больше 5 генераторов.
execute if entity @s[tag=marker2] if score *marker2 gen_markers = 5 gen_markers run kill @s
execute if entity @s[tag=marker2] if score *marker2 gen_markers = 5 gen_markers run say Нельзя ставить больше 5 генераторов.
execute if entity @s[tag=marker3] if score *marker3 gen_markers = 5 gen_markers run kill @s
execute if entity @s[tag=marker3] if score *marker3 gen_markers = 5 gen_markers run say Нельзя ставить больше 5 генераторов.
execute if entity @s[tag=marker4] if score *marker4 gen_markers = 5 gen_markers run kill @s
execute if entity @s[tag=marker4] if score *marker4 gen_markers = 5 gen_markers run say Нельзя ставить больше 5 генераторов.
execute if entity @s[tag=marker5] if score *marker5 gen_markers = 5 gen_markers run kill @s
execute if entity @s[tag=marker5] if score *marker5 gen_markers = 5 gen_markers run say Нельзя ставить больше 5 генераторов.

execute if entity @s[tag=marker1] if score *marker1 gen_markers < 5 gen_markers run scoreboard players add *marker1 gen_markers 1
execute if entity @s[tag=marker2] if score *marker2 gen_markers < 5 gen_markers run scoreboard players add *marker2 gen_markers 1
execute if entity @s[tag=marker3] if score *marker3 gen_markers < 5 gen_markers run scoreboard players add *marker3 gen_markers 1
execute if entity @s[tag=marker4] if score *marker4 gen_markers < 5 gen_markers run scoreboard players add *marker4 gen_markers 1
execute if entity @s[tag=marker5] if score *marker5 gen_markers < 5 gen_markers run scoreboard players add *marker5 gen_markers 1

tag @s add marked
