scoreboard players set max rng 5
function rng:rng

execute if score calc rng matches 5 run data modify storage reason text set value '[{"text":"забыл про гравитацию"}]'
execute if score calc rng matches 4 run data modify storage reason text set value '[{"text":"сломал ногу"}]'
execute if score calc rng matches 3 run data modify storage reason text set value '[{"text":"расплющился об поверхность земли"}]'
execute if score calc rng matches 2 run data modify storage reason text set value '[{"text":"провалился сквозь землю"}]'
execute if score calc rng matches 1 run data modify storage reason text set value '[{"text":"решил отдохнуть"}]'

#tellraw @a [{"text":"\n"},{"selector":"@s","color":"red"}," ",{"storage":"potato","nbt":"randmes","interpret":true,"color":"white"},{"text":"\n"}]