scoreboard players set *game bow_game 0
clear @a bow{bowgame:1}
clear @a arrow{bowgame:1}
kill @e[tag=ballon]

tag @a add 
execute as @a run scoreboard players operation @s tmp_sboards = @s bow_count

function features:whoved/predicates/leader

execute unless score *empty temp matches 1 run function lobby:bow/print_top
execute if score *empty temp matches 1 run function features:predic/empty_leaders


execute unless score *empty temp matches 1 as @a[tag=!1top,tag=!2top,tag=!3top] run playsound minecraft:music_disc.mellohi master @s ~ ~ ~ 1 1 1
execute if score *empty temp matches 1 run playsound minecraft:music_disc.mellohi master @a ~ ~ ~ 1 1 1
schedule function features:predic/stopsound 10s

scoreboard objectives setdisplay sidebar

bossbar set minecraft:101 visible false