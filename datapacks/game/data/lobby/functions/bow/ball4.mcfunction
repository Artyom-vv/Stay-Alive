scoreboard players set max rng 7
function rng:rng
scoreboard players set @s temp 0
scoreboard players operation @s temp += calc rng

scoreboard players operation @s bow_count += @s temp
advancement revoke @s only minecraft:bow/ball4

function lobby:bow/predicates/sound_kill
