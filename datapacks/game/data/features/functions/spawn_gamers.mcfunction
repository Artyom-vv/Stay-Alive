## Добавляем выживших
team join general @a
### Ставим время
time set midnight
## Добавляем маньяка
team join murderer @a[scores={will_murderer=1}]
scoreboard players reset * will_murderer
## Спавн маньяка
execute as @a[team=murderer] at @s run tp @s 385.0 106.0 292.0 -45.0 51.0
execute as @a[team=murderer] at @s run spawnpoint @s ~ ~ ~
## Спавн выживших
function features:spawners/survivors/spawn
