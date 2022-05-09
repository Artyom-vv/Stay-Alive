scoreboard players remove @s fueldist 1
# particle flame ~ ~ ~ 0 0 0 0 1
execute if entity @e[dx=0,tag=FuelVillager] run scoreboard players set @s fueldist 0
execute as @e[dx=0,tag=FuelVillager] if entity @p[nbt={SelectedItem:{tag:{fuel:1}}}] run function features:things/tech/bochka/use
execute if score @s fueldist matches 1.. positioned ^ ^ ^1 run function features:things/tech/bochka/rc.loop