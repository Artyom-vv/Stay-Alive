execute at @p[tag=potatoNosec] run particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0.7 0.7 0.7 1 50
execute at @p[tag=potatoNosec] run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 100
clear @a[team=potaters]
clear @a[team=potato]
function lobby:potato/randmes
team modify potaters friendlyFire false
xp set @a[team=!general,team=!murderer,team=!dead] 0 levels
xp set @a[team=!general,team=!murderer,team=!dead] 0 points
effect give @a[team=!general,team=!murderer,team=!dead] minecraft:resistance 3 100 true
team join lobby @s
execute at @s run summon minecraft:creeper ~ ~ ~ {Fuse:0}
item replace entity @a[team=!general,team=!murderer,team=!dead] armor.head with air
