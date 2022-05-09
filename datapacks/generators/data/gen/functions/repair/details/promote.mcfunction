execute as @a[tag=this.player] run function gen:repair/basic/text2
execute as @a[tag=this.player] run function gen:repair/details/check_item
execute if score @s gen_c_detail matches 1.. run function gen:repair/details/events/set_predicates
# execute if score @s gen_c_detail matches 1.. run function gen:repair/details/events/reload_text