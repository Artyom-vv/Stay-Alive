tag @e[tag=!isSpawned,tag=spawnSurvivors,sort=random,limit=1] add temp2
tp @s @e[tag=temp2,limit=1]
execute at @s run spawnpoint @s ~ ~ ~
tag @e[tag=temp2] add isSpawned
tag @e[tag=temp2] remove temp2
