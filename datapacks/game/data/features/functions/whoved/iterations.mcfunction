execute store result score *players temp if entity @a

execute as @a run function features:whoved/check

scoreboard players add *it temp 1
execute unless score *players_done temp = *players temp run function features:whoved/iterations
