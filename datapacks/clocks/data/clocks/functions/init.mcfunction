data modify storage clocks pretext set value '{"text":"Игра закончится через ","color":"white"}'
data modify storage clocks minutes set value '{"score":{"name":"minutes","objective":"clock"},"color":"gold"}'
data modify storage clocks colon set value '{"text":":","color":"gold"}'
data modify storage clocks seconds set value '{"score":{"name":"seconds","objective":"clock"},"color":"gold"}'
data modify storage clocks zero set value '{"text":"0","color":"gold"}'
data modify storage clocks posttext set value '{"text":" минут","color":"white"}'

scoreboard objectives add clock dummy
scoreboard players add seconds clock 0
scoreboard players add minutes clock 0
scoreboard players add bossbar clock 0
scoreboard players add actionbar clock 0
scoreboard players add subtitle clock 0
scoreboard players add title clock 0

bossbar add clock [{"score":{"name":"minutes","objective":"clock"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"minutes","objective":"clock"},"color":"green"}]
bossbar set clock value 0
bossbar set clock max 1
bossbar set clock color green
