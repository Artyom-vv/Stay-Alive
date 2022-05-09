execute unless score @s fall matches 1.. run effect give @s speed 2 1 true
execute if entity @s[scores={timer.res=0}] unless score @s fall matches 1.. run function ds:predicates/remove_damage
scoreboard players set @s timer.res 0