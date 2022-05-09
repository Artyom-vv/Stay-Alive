scoreboard players set max rng 5
function rng:rng

execute if score calc rng matches 5 run data modify storage reason text set value '[{"text":"умер от удара в спину"}]'
execute if score calc rng matches 4 run data modify storage reason text set value '[{"text":"получил перелом грудной клетки"}]'
execute if score calc rng matches 3 run data modify storage reason text set value '[{"text":"сломал все конечности об орудие маньяка"}]'
execute if score calc rng matches 2 run data modify storage reason text set value '[{"text":"потерял душу"}]'
execute if score calc rng matches 1 run data modify storage reason text set value '[{"text":"медленно убегал"}]'