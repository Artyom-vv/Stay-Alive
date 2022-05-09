execute as @e[tag=markerbow,limit=10,sort=random] at @s run summon sheep ~ ~ ~ {Team:"noname",Health:1.0f,Tags:["new","ballon"]}
effect give @e[tag=ballon] minecraft:levitation 100 0 true


scoreboard players set max rng 360
execute as @e[tag=new,tag=ballon] run function lobby:bow/new_sheep_rotation
tag @e[tag=new,tag=ballon] remove new
execute as @e[tag=ballon,tag=!color] run function lobby:bow/randcolor