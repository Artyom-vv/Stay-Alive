execute if score seconds clock matches 1.. run schedule function clocks:main_20t 20t
execute if score minutes clock matches 1.. run schedule function clocks:main_20t 20t
execute if score seconds clock matches 0 if score minutes clock matches 0 run function clocks:end

execute if score seconds clock matches 0 if score minutes clock matches 1.. run function clocks:minutes
execute if score seconds clock matches 1.. run scoreboard players remove seconds clock 1

execute if score bossbar clock matches 0 run bossbar set clock visible false
execute if score bossbar clock matches 1 run function clocks:bossbar
# execute if score actionbar clock matches 1 run function clocks:actionbar
# execute if score title clock matches 1 run function clocks:title
# execute if score subtitle clock matches 1 run function clocks:subtitle