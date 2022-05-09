execute positioned ~ ~0.35 ~ run function gen:generating/predicates/text/text_main

data modify storage minecraft:item text set value '{"text":"Топливо"}'
data modify storage minecraft:item icon set value '[{"text":"\\uE064"}]'
execute positioned ~ ~ ~ run function gen:generating/predicates/text/item_text