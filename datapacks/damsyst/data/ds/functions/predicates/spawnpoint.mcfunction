# @s - МАНЬЯК

scoreboard players operation @s dbd_CdForMan = *const dbd_CdForMan

summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["new","point_to_tp"]}

tag @s add this.from
execute as @e[tag=new,tag=point_to_tp] run function sa:id/new_block_move
function sa:id/tmp_remove
tag @e[tag=new,tag=point_to_tp] remove new

execute unless entity @e[tag=in.block.move] run schedule function ds:period/period2t 2t replace
tag @s add in.block.move