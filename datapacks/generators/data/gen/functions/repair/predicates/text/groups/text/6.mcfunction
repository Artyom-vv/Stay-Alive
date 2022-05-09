execute positioned ~ ~0.65 ~ run function gen:generating/predicates/text/text_main

data modify storage minecraft:item text set value '{"text":"Схема"}'
data modify storage minecraft:item icon set value '[{"text":"\\uE063"}]'
execute positioned ~ ~0.3 ~ run function gen:generating/predicates/text/item_text
data modify storage minecraft:item text set value '{"text":"Топливо"}'
data modify storage minecraft:item icon set value '[{"text":"\\uE064"}]'
execute positioned ~ ~ ~ run function gen:generating/predicates/text/item_text