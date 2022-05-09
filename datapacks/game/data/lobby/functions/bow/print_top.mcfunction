data modify storage scores text set value '[{"text":" - "},{"score":{"name": "@s","objective": "tmp_sboards"}}]'
data modify storage place text set value '[{"text":"1 место - "}]'
execute as @a[scores={top=1}] run function features:whoved/display

data modify storage scores text set value '[{"text":" - "},{"score":{"name": "@s","objective": "tmp_sboards"}}]'
data modify storage place text set value '[{"text":"2 место - "}]'
execute as @a[scores={top=2}] run function features:whoved/display

data modify storage scores text set value '[{"text":" - "},{"score":{"name": "@s","objective": "tmp_sboards"}}]'
data modify storage place text set value '[{"text":"3 место - "}]'
execute as @a[scores={top=3}] run function features:whoved/display
tellraw @a {"text":"\n"}