data modify storage scores text set value '[{"text":" - "},{"score":{"name": "@s","objective": "tmp_sboards"}}]'
data modify storage place text set value '[{"text":"1 место - "}]'
execute as @a[tag=1top] run function features:whoved/display

data modify storage scores text set value '[{"text":" - "},{"score":{"name": "@s","objective": "tmp_sboards"}}]'
data modify storage place text set value '[{"text":"2 место - "}]'
execute as @a[tag=2top] run function features:whoved/display

data modify storage scores text set value '[{"text":" - "},{"score":{"name": "@s","objective": "tmp_sboards"}}]'
data modify storage place text set value '[{"text":"3 место - "}]'
execute as @a[tag=3top] run function features:whoved/display
tellraw @a {"text":"\n"}