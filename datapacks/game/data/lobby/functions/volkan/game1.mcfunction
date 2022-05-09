execute as @a[tag=in.game] if score @s v_timer matches 1.. run scoreboard players remove @s v_timer 1
execute as @a[tag=in.game] run scoreboard players remove @s v_timer2 1
#scoreboard players add @a v_timer 1

execute as @a[tag=in.game] at @s if score @s v_timer matches 0 positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:gray_terracotta run function lobby:volkan/block/yel
execute as @a[tag=in.game] at @s if score @s v_timer matches 0 positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:yellow_terracotta run function lobby:volkan/block/orange
execute as @a[tag=in.game] at @s if score @s v_timer matches 0 positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:orange_terracotta run function lobby:volkan/block/red
execute as @a[tag=in.game] at @s if score @s v_timer matches 0 positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:red_terracotta run function lobby:volkan/block/air

execute as @a[tag=in.game] at @s if block ~ ~-1 ~ air run scoreboard players add @s v_timer2 2
execute as @a[tag=in.game] if score @s v_timer2 matches 70 run tellraw @s [{"text":"Играйте честно"}]

execute as @a[tag=in.game] at @s if block ~ ~-0.2 ~ minecraft:magma_block run function lobby:volkan/death

execute at @e[tag=markervolk] unless entity @a[tag=in.game,distance=..30] run function lobby:volkan/end