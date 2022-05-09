# @s = ИГРОК

execute if score @s circle_timer matches 1.. run scoreboard players remove @s circle_timer 1

execute if entity @s[tag=c_q] run function gen:repair/reaction/process/if/q
execute if entity @s[tag=c_f] run function gen:repair/reaction/process/if/f

execute as @a[tag=circle] at @s as @e[sort=nearest,limit=1,type=item] run data modify entity @s PickupDelay set value 0.01s

function gen:repair/reaction/process/display

execute if score @s circle_timer matches ..0 run function gen:repair/reaction/reset