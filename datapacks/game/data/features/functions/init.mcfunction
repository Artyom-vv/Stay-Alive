## /give @s minecraft:carrot_on_a_stick{MediKit:1,CustomModelData:49,display:{Name:'{"text":"Аптечка"}'}} медкит

scoreboard objectives add food food
scoreboard objectives add perebor dummy
scoreboard objectives add tmp_sboards dummy
scoreboard objectives add all_fuel dummy
#scoreboard objectives add timer.res dummy
#scoreboard objectives add timer.adr dummy
scoreboard objectives add feat_bread minecraft.used:minecraft.bread
scoreboard objectives add feat_rcl minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add menu dummy
data modify storage scores text set value '[{"text":" - "},{"score":{"name": "@s","objective": "tmp_sboards"}}]'
data modify storage place text set value '[{"text":"1 место -"}]'
scoreboard objectives add blockitems dummy
scoreboard objectives add rc.click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add drop1 minecraft.custom:minecraft.drop
scoreboard objectives add return dummy
scoreboard objectives add things.timer dummy
scoreboard objectives add fueltalk minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add fuel dummy
scoreboard objectives add fueldist dummy
scoreboard objectives add fueltech dummy
scoreboard objectives add game dummy