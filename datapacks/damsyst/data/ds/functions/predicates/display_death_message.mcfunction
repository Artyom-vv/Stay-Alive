execute if entity @s[team=murderer] run tag @s add color_red

team leave @s
execute unless entity @s[tag=color_red] run tellraw @a [{"selector":"@s","color":"aqua"},{"text":" "},{"storage":"reason","nbt":"text","color":"red","interpret":true}]
execute if entity @s[tag=color_red] run tellraw @a [{"selector":"@s","color":"dark_red"},{"text":" "},{"storage":"reason","nbt":"text","color":"red","interpret":true}]
team join dead @s

tag @s remove color_red