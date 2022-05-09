scoreboard players add @e[tag=ballon] bow_timer_b 1
tp @e[scores={bow_timer_b=200..},tag=ballon] ~ -500 ~
kill @e[scores={bow_timer_b=200..},tag=ballon]

#execute as @a run scoreboard players operation @s bow_count = @s bow_kills
#scoreboard players add @a[scores={bow_kills=1..}] bow_count 1
scoreboard players set @a bow_kills 0
execute unless entity @e[tag=ballon] run function lobby:bow/spawnball
# execute if score *bow_tim bow_timer matches 0 run function lobby:bow/spawnball
# execute if score *bow_tim bow_timer matches 100 run function lobby:bow/spawnball
# execute if score *bow_tim bow_timer matches 300 run function lobby:bow/spawnball
# execute if score *bow_tim bow_timer matches 500 run function lobby:bow/spawnball
# execute if score *bow_tim bow_timer matches 700 run function lobby:bow/spawnball

execute store result bossbar minecraft:101 value run scoreboard players get *bow_tim bow_timer

execute if score *bow_tim bow_timer matches 0 run function lobby:bow/end
execute if score *bow_tim bow_timer matches 1.. run scoreboard players remove *bow_tim bow_timer 1

scoreboard players add anim bow_anim 1

execute as @e[tag=ballon] at @s run tp @s ~ ~0.07 ~ ~5 ~

execute if score anim bow_anim matches 1 run scoreboard objectives modify bow_count displayname [{"text":"<< ","color":"#edf66b","bold":true},{"text":"Б","color":"#eeffda","bold":true},{"text":"аллы >>","color":"#edf66b","bold":true}]

execute if score anim bow_anim matches 4 run scoreboard objectives modify bow_count displayname [{"text":"<< ","color":"#edf66b","bold":true},{"text":"Б","color":"#eeffda","bold":true},{"text":"аллы >>","color":"#edf66b","bold":true}]
execute if score anim bow_anim matches 8 run scoreboard objectives modify bow_count displayname [{"text":"<< ","color":"#edf66b","bold":true},{"text":"Ба","color":"#eeffda","bold":true},{"text":"ллы >>","color":"#edf66b","bold":true}]
execute if score anim bow_anim matches 12 run scoreboard objectives modify bow_count displayname [{"text":"<< ","color":"#edf66b","bold":true},{"text":"Бал","color":"#eeffda","bold":true},{"text":"лы >>","color":"#edf66b","bold":true}]
execute if score anim bow_anim matches 16 run scoreboard objectives modify bow_count displayname [{"text":"<< ","color":"#edf66b","bold":true},{"text":"Балл","color":"#eeffda","bold":true},{"text":"ы >>","color":"#edf66b","bold":true}]
execute if score anim bow_anim matches 20 run scoreboard objectives modify bow_count displayname [{"text":"<< ","color":"#edf66b","bold":true},{"text":"Баллы","color":"#eeffda","bold":true},{"text":" >>","color":"#edf66b","bold":true}]

execute if score anim bow_anim matches 54 run scoreboard objectives modify bow_count displayname [{"text":"<< ","color":"#edf66b","bold":true},{"text":"Б","color":"#edf66b","bold":true},{"text":"аллы","color":"#eeffda","bold":true},{"text":" >>","color":"#edf66b","bold":true}]
execute if score anim bow_anim matches 58 run scoreboard objectives modify bow_count displayname [{"text":"<< ","color":"#edf66b","bold":true},{"text":"Ба","color":"#edf66b","bold":true},{"text":"ллы","color":"#eeffda","bold":true},{"text":" >>","color":"#edf66b","bold":true}]
execute if score anim bow_anim matches 62 run scoreboard objectives modify bow_count displayname [{"text":"<< ","color":"#edf66b","bold":true},{"text":"Бал","color":"#edf66b","bold":true},{"text":"лы","color":"#eeffda","bold":true},{"text":" >>","color":"#edf66b","bold":true}]
execute if score anim bow_anim matches 66 run scoreboard objectives modify bow_count displayname [{"text":"<< ","color":"#edf66b","bold":true},{"text":"Балл","color":"#edf66b","bold":true},{"text":"ы","color":"#eeffda","bold":true},{"text":" >>","color":"#edf66b","bold":true}]
execute if score anim bow_anim matches 70 run scoreboard objectives modify bow_count displayname [{"text":"<< ","color":"#edf66b","bold":true},{"text":"Баллы >>","color":"#edf66b","bold":true}]

execute if score anim bow_anim matches 84 run scoreboard objectives modify bow_count displayname [{"text":"<< ","color":"#edf66b","bold":true},{"text":"Баллы >>","color":"#edf66b","bold":true}]

execute if score anim bow_anim matches 88 run scoreboard objectives modify bow_count displayname [{"text":"< < ","color":"#edf66b","bold":true},{"text":"Баллы > >","color":"#edf66b","bold":true}]
execute if score anim bow_anim matches 92 run scoreboard objectives modify bow_count displayname [{"text":"< < < ","color":"#edf66b","bold":true},{"text":"Баллы > > >","color":"#edf66b","bold":true}]
execute if score anim bow_anim matches 100 run scoreboard objectives modify bow_count displayname [{"text":"< < ","color":"#edf66b","bold":true},{"text":"Баллы > >","color":"#edf66b","bold":true}]
execute if score anim bow_anim matches 104 run scoreboard objectives modify bow_count displayname [{"text":"<< ","color":"#edf66b","bold":true},{"text":"Баллы >>","color":"#edf66b","bold":true}]

execute if score anim bow_anim matches 110.. run scoreboard players set anim bow_anim 0