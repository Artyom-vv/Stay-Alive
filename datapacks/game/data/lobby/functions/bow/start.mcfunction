scoreboard players set *game bow_game 1
give @a bow{bowgame:1,Enchantments:[{id:"infinity",lvl:1}]}
give @a arrow{bowgame:1}
scoreboard players set @a bow_count 0


scoreboard players set *bow_tim bow_timer 800
scoreboard objectives setdisplay sidebar bow_count

bossbar set minecraft:101 visible true
bossbar set minecraft:101 players @a
bossbar set minecraft:101 value 800