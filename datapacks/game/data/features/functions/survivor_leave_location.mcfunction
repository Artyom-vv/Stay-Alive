team leave @s
tellraw @a [{"selector":"@s","color":"red"},{"text":" сбежал","color":"gold"}]
team join alive

clear @s
tag @s add temp
tp @s @a[tag=!temp,limit=1,sort=random]
tag @s remove temp

gamemode spectator @s