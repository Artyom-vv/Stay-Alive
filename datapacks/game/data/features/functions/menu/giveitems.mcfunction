setblock 0 0 0 minecraft:yellow_shulker_box destroy

scoreboard players set @s return 1
execute store result score *len menu run data get storage menu mans
scoreboard players operation *perebor menu = @s ID.murderer
function features:menu/perebor2

data modify block 0 0 0 Items set from storage menu mans[0].inventory
loot replace entity @s container.0 mine 0 0 0 minecraft:yellow_shulker_box