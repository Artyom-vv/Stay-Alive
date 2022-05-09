# @s - МАНЬЯК
tag @s remove in.block.move
tag @s add this.from

execute as @e[tag=point_to_tp,tag=!new] run function sa:id/link_block_move_to_murderer
execute as @e[tag=is.linked] run kill @s
function sa:id/tmp_remove

kill @e[tag=point_to_tp]