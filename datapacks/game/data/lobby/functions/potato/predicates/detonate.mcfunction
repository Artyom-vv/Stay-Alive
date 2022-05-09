# Лишь партиклы
execute at @p[team=potato] run particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0.7 0.7 0.7 1 50
execute at @p[team=potato] run playsound minecraft:entity.generic.explode ambient @a[tag=miniGame_players] ~ ~ ~ 100
effect give @a[tag=miniGame_players] minecraft:resistance 3 100 true

# Выбираем текст для смерти (random_message)
function lobby:potato/randmes
team modify potares friendlyFire false

# Динамит
execute at @s run summon minecraft:creeper ~ ~ ~ {Fuse:0}
