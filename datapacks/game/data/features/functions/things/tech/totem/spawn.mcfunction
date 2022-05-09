tag @e[tag=totem] remove isWork
execute as @e[tag=totem] run item replace entity @s armor.head with air
tag @e[tag=totem,sort=random,limit=5] add isWork
item replace entity @e[tag=isWork] armor.head with apple{CustomModelData:6}
execute unless entity @e[tag=totem] run say На карте нет тотемов.
scoreboard players set @e[tag=totem] things.timer 0