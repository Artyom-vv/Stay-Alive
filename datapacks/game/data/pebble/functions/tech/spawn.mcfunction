execute positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^0.2 ^1 {Duration:210000,Tags:["peb_motion"]}
execute anchored eyes run summon armor_stand ^ ^ ^0.1 {Small:1,Tags:["peb_new"]}

data modify entity @e[tag=peb_new,limit=1] Motion set from entity @e[limit=1,tag=peb_motion] Pos

kill @e[tag=peb_motion]

tag @e[tag=peb_new] remove peb_new