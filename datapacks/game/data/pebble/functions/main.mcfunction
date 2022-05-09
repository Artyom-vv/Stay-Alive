
execute as @a[scores={peb_cd=0,peb_rcl=1..},nbt={Inventory:[{tag:{Pebble:1}}]}] at @s run scoreboard players set @s peb_cd 4
execute as @a[scores={peb_cd=1..},nbt={Inventory:[{tag:{Pebble:1}}]}] at @s run scoreboard players set @s peb_cd2 8
execute as @a[scores={peb_cd=3},nbt={Inventory:[{tag:{Pebble:1}}]}] at @s run scoreboard players add @s peb_pow_lev 1
execute as @a[scores={peb_cd2=1},nbt={Inventory:[{tag:{Pebble:1}}]}] at @s run function pebble:predic/start

scoreboard players remove @a[scores={peb_cd2=1..}] peb_cd2 1
scoreboard players remove @a[scores={peb_cd=1..}] peb_cd 1
scoreboard players remove @a[scores={peb_rcl=1..}] peb_rcl 1
execute as @a[scores={fueltalk=1..}] at @s run function pebble:use/rc.start
execute at @e[tag=peb_active] run particle crit ~ ~ ~ 0 0 0 0 1



execute as @e[scores={TimerToDeath=8..},tag=peb_active] at @s positioned ~-1 ~-1 ~-1 as @a[dx=2,dy=2,dz=2] run function pebble:predic/hit
kill @e[tag=peb_active,nbt={OnGround:1b}]
scoreboard players add @e[tag=peb_active] TimerToDeath 1
kill @e[scores={TimerToDeath=200..}]