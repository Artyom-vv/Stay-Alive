
#checks

#feat
execute as @a run scoreboard players operation @s dbd_hp_summ += @s dbd_hp
execute as @a run scoreboard players operation @s dbd_hp_summ += @s dbd_hp_dop
effect give @a[nbt=!{ActiveEffects:[{Id:17b}]},team=general,scores={food=9..,dbd_hp_summ=..2}] minecraft:hunger 2 127 true
effect give @a[team=general,scores={food=0..7,dbd_hp_summ=..2}] minecraft:saturation 3 2 true
effect clear @a[team=general,scores={food=0..5,dbd_hp_summ=..2}] hunger
effect give @a[team=general,scores={dbd_hp_summ=3..}] minecraft:saturation 3 100 true 
scoreboard players set @a[scores={dbd_hp_dop=3..}] dbd_hp_dop 2
# check item
execute as @a[scores={feat_bread=1..,dbd_hp_summ=..2}] run function features:predic/hp_up
execute as @a[scores={feat_rcl=1..},nbt={SelectedItem:{tag:{MedKit:1}}}] run function features:predic/medkit
execute as @a[scores={feat_rcl=1..},nbt={SelectedItem:{tag:{Resist:1}}}] run function features:predic/resist
execute as @a[scores={feat_rcl=1..},nbt={SelectedItem:{tag:{Adren:1}}}] run function features:predic/adren
# clear scores
scoreboard players remove @a[scores={timer.adr=1..}] timer.adr 1
scoreboard players remove @a[scores={timer.res=1..}] timer.res 1
scoreboard players set @a feat_bread 0
scoreboard players set @a feat_rcl 0
scoreboard players set @a dbd_hp_summ 0
#loop
#things
execute as @e[type=item,nbt={OnGround:1b,Item:{tag:{trap:1}}}] at @s if block ~ ~ ~ air run function features:things/trap/place
execute as @a at @s if block ~ ~ ~ stone_pressure_plate if entity @e[tag=trap,distance=..2,sort=nearest,limit=1] run function features:things/trap/used
effect give @e[tag=FuelVillager] minecraft:resistance 99 100 true
execute at @e[tag=FuelVillager] run particle dust 1 1 1 1 ~ ~0.3 ~ 0.3 0.3 0.3 0 1 force @a[distance=..10,team=general]
execute as @a[scores={fueltalk=1..}] at @s run function features:things/tech/bochka/rc.start
#effect give @a minecraft:saturation 9 100 true