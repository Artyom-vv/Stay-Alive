# @s = ИГРОК

tag @s add this.player

# Эта херня отвечает за кружочек с Q,F
execute if entity @s[tag=circle] if entity @e[tag=gen,tag=circle_fp,distance=..6.5] run function gen:repair/reaction/main
# Если генератор, для которого есть кружочек, не нашёл в близи выжившего, + таймер кончился, то нужно дропнуть предмет (Вроде так)
execute as @e[tag=gen,tag=circle_fp] at @s unless entity @e[team=general,tag=circle,distance=..6.5,scores={circle_timer=0..}] run function gen:repair/reaction/details/drop
# Эта херня отвечает за таймер починки, конец починки.
execute if predicate gen:shift if entity @e[tag=gen,distance=..1.5,scores={gen_c_detail=1..}] run function gen:repair/promote_gen_

tag @s remove this.player