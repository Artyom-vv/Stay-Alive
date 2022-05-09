effect give @a[team=general] minecraft:weakness 2 100 true
effect give @a[team=murderer] minecraft:speed 1 0 true
# Просто получил урон
execute as @a[team=general,nbt={HurtTime:9s}] run function ds:events/get_hit
execute as @a[scores={use.crossbow=1..},team=murderer] run function ds:events/shot_crossbow
#for murder
execute as @a[team=murderer,scores={dbd_hit=1..},tag=!ShouldTp] at @s run function ds:events/on_hit
execute as @a[team=murderer,tag=ShouldTp,nbt={OnGround:1b}] at @s run function ds:if/on_block

execute as @a[team=general,nbt={OnGround:1b},scores={fall=1..}] at @s run function ds:events/on_fall

execute as @a[team=murderer,scores={dbd_CdForMan=1..}] at @s run function ds:cdhit/main