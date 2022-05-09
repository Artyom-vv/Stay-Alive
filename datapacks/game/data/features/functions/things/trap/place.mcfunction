execute align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ stone_pressure_plate
execute align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["trap"]}
kill @e[type=item]
