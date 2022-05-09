execute positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^0.25 {Motion:[0.0d,0.0d,0.0d],Tags:["peb_motion"],Radius:0f,Duration:-1,Age:-2147483648,WaitTime:-2147483648}
execute rotated as @s as @e[tag=peb_motion] positioned as @s run tp @s ~ ~ ~ ~ ~
execute anchored eyes run summon armor_stand ^ ^ ^ {Invisible:1,Small:1,Tags:["peb_new","peb_active"]}
