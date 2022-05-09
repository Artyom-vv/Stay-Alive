
data modify entity @e[tag=peb_new,limit=1] Motion set from entity @e[limit=1,tag=peb_motion] Pos
# tellraw @a {"entity":"@e[tag=peb_new,limit=1]","nbt":"Motion"}
# tellraw @a {"entity":"@e[tag=peb_motion,limit=1]","nbt":"Pos"}

kill @e[tag=peb_motion]

tag @e[tag=peb_new] remove peb_new