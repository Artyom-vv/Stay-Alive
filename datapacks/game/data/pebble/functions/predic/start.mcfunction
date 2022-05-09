# tellraw CraftikShavuha {"score":{"objective":"peb_pow_lev","name":"CraftikShavuha"}}
scoreboard players operation @s temp = @s peb_pow_lev
execute if score @s temp matches 6.. run scoreboard players set @s temp 5
execute anchored feet run function pebble:tech/polspawn
scoreboard players set @s peb_pow_lev 0
scoreboard players set @s peb_cd2 0
scoreboard players set @s peb_cd 0
function pebble:predic/clearrock
function pebble:predic/math1






