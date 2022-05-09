data modify storage reason text set value '{"text":"умер"}'
execute if entity @s[team=murderer] run function ds:events/on_death
scoreboard players reset @s death