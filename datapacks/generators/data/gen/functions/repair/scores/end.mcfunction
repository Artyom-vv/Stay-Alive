tag @p[tag=this.pl] remove repair30t
execute unless score @s gen_c_detail matches 3 run function gen:sounds/repair/random
execute if score @s gen_c_detail matches 3 run function gen:sounds/repair/fuel