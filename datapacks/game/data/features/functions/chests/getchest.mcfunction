
tag @e[tag=!isSpawned,tag=chestsource,sort=random,limit=1] add temp
execute at @e[tag=temp] run clone ~ ~ ~ ~ ~ ~ 0 0 0
clone 0 0 0 0 0 0 ~ ~ ~
data merge block ~ ~ ~ {Lock:"Ключ от сундука"}
tag @e[tag=temp] add isSpawned
tag @e[tag=temp] remove temp

