particle crit ~ ~ ~ 0 0 0 0 1 force




execute positioned ~ ~-0.4 ~ unless block ~ ~ ~ air run particle dust 1 1 1 1 ~ ~ ~ 0.3 0.3 0.3 0 15
scoreboard players remove @s dbd_rc_ground 1
execute if score @s dbd_rc_ground matches 0 run particle dust 1 1 1 1 ~ ~ ~ 0.3 0.3 0.3 0 15
execute if score @s dbd_rc_ground matches 1.. positioned ~ ~-0.4 ~ if block ~ ~ ~ air run function ds:cdhit/raycast/rc_spawn



