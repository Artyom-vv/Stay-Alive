execute as @e[tag=this_part] at @s run fill ~ ~ ~ ~ ~6 ~ air
tag @e remove this_part
tag @e remove end
execute as @e[tag=gen_dependencies] at @s run tp @s ~ ~-500 ~
kill @e[tag=gen]
kill @e[tag=gen_dependencies]
stopsound @a master minecraft:cycle
stopsound @a master minecraft:zapusk
stopsound @a master minecraft:gen
stopsound @a master minecraft:gen1
stopsound @a master minecraft:gen2
stopsound @a master minecraft:gen3