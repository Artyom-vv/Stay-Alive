execute if score @s gen_c_detail matches 1 run give @p[tag=this.player] iron_block{CustomModelData:3,wire:1}
execute if score @s gen_c_detail matches 2 run give @p[tag=this.player] iron_block{CustomModelData:4,scheme:1}
execute if score @s gen_c_detail matches 3 run give @p[tag=this.player] iron_block{CustomModelData:5,fuel:1}

tag @s remove circle_fp
scoreboard players reset @s gen_c_detail
scoreboard players reset @s ID.gens