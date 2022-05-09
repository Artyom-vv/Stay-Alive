
execute if score @s dbd_hp_anim matches 0 run scoreboard players remove @s[scores={dbd_hp=1..,dbd_hp_dop=0}] dbd_hp 1
execute if score @s dbd_hp_anim matches 0 run scoreboard players remove @s[scores={dbd_hp_dop=1..}] dbd_hp_dop 1
execute if score @s dbd_hp matches ..0 run function ds:events/on_death

function ds:predicates/health/animation/set




#[{"selector":"@s"},{"text":"умер от "},{"storage":"prichina","nbt":"text","color":"red","interpret":true}]