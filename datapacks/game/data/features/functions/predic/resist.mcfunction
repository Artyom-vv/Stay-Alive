clear @s carrot_on_a_stick{Resist:1} 1
execute if score @s timer.res matches 0 run scoreboard players add @s timer.res 140
execute if score @s timer.res matches 1.. run scoreboard players add @s timer.res 70
playsound minecraft:item.dye.use ambient @s ~ ~ ~ 100








