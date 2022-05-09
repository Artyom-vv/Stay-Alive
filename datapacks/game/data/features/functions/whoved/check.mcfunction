execute store result storage tmp tmp int 1 run scoreboard players get @s ID.players

execute if score *it temp = @s tmp_sboards run data modify storage top:players array append from storage tmp tmp
execute if score *it temp = @s tmp_sboards run tag @s add done

execute store result score *players_done temp if entity @a[tag=done]
