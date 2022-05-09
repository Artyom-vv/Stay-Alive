
## Тотемы
function features:things/tech/totem/spawn

## Генераторы
function gen:clear
function gen:generate

## Сундуки
function features:chests/spawn

## Удаляем временные теги
tag @e remove temp
tag @e remove temp2
tag @e remove isSpawned
tag @e[type=!player] remove complete

## Обновляем информационную табличку в лобби
function lobby:start_panel/murderer/signs/scheme/info/empty

## Перезаписываем игровые скорборды
scoreboard players set @a timer.res 0
scoreboard players set @a dbd_hp_dop 0
scoreboard players set @a dbd_hp 3
scoreboard players set @a fall 0
scoreboard players set @a[team=general] timer.res 0
# scoreboard players set @a peb_cd 0
# scoreboard players set @a peb_cd2 0
# kill @e[tag=pebble.usable]
# execute at @e[tag=pebble,limit=4,sort=random] run summon minecraft:villager ~ ~-1.3 ~ {Silent:1b,NoAI:1,Tags:["pebble.usable"],NoGravity:1}
# function features:things/tech/bochka/generate

## Настройки игры

clear @a
kill @e[type=item]
effect give @a[team=!general] minecraft:hunger 3 100 true
effect clear @a[team=general] saturation
effect give @a[team=general] regeneration 999999 255 true 
effect give @a[team=murderer] saturation 32000 100 true 
effect give @a[team=murderer] weakness 999999 0 true
fill 285 104 260 291 107 260 minecraft:iron_bars
give @a[team=murderer] iron_axe{axe:1, display:{Name:'{"text":"Топор маньяка", "color": "purple"}'}}
give @a[team=murderer] minecraft:stone_pressure_plate{trap:1,display:{Name:'{"text":"Капкан"}'}} 3
gamemode adventure @a

## Время игры
execute if score *switch_game_time lobby matches 1 run scoreboard players set minutes clock 10
execute if score *switch_game_time lobby matches 2 run scoreboard players set minutes clock 20
execute if score *switch_game_time lobby matches 3 run scoreboard players set minutes clock 25
scoreboard players set bossbar clock 1
function clocks:main_20t

## игровые правила
gamerule keepInventory false

### Выдача ключа игрокам
give @a[team=general] minecraft:amethyst_shard{general:1, display:{Name:'{"text":"Ключ от сундука"}'}}


## Стартуем игру
scoreboard players set *game game 1
