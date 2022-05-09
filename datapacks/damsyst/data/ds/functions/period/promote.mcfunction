# @s - МАНЬЯК

effect give @s slowness 1 255 true
effect give @s jump_boost 1 128 true

tag @s add this.from
execute as @e[tag=point_to_tp,tag=!new] run function sa:id/link_block_move_to_murderer
execute at @e[tag=is.linked] run tp @s ~ ~ ~

execute if score @s dbd_CdForMan matches 0 run function ds:period/end
function sa:id/tmp_remove
execute if score @s dbd_CdForMan matches 1.. run schedule function ds:period/period2t 2t replace
