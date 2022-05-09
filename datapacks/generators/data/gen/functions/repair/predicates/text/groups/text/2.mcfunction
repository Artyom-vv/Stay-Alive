execute positioned ~ ~0.35 ~ run function gen:generating/predicates/text/text_main

data modify storage minecraft:item text set value '{"text":"Схема"}'
data modify storage minecraft:item icon set value '[{"text":"\\uE063"}]'
execute positioned ~ ~ ~ run function gen:generating/predicates/text/item_text