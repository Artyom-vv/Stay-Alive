scoreboard players set max rng 5
function rng:rng
# scoreboard players get calc rng
execute if score calc rng matches 5 run data modify storage potato randmes set value '[{"text":"был начищен в суп"}]'
execute if score calc rng matches 4 run data modify storage potato randmes set value '[{"text":"взорвался"}]'
execute if score calc rng matches 3 run data modify storage potato randmes set value '[{"text":"не смог удержать картошку"}]'
execute if score calc rng matches 2 run data modify storage potato randmes set value '[{"text":"запнулся"}]'
execute if score calc rng matches 1 run data modify storage potato randmes set value '[{"text":"решил отдохнуть"}]'

tellraw @a[team=potaters] [{"selector":"@s","color":"red"}," ",{"storage":"potato","nbt":"randmes","interpret":true,"color":"white"}]