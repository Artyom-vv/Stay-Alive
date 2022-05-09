summon armor_stand 0 10 0 {Tags:["nick_get"],NoGravity:1b}
loot replace entity @e[tag=nick_get] armor.head loot head
data modify storage nick_get nick set from entity @e[tag=nick_get,limit=1] ArmorItems[3].tag.SkullOwner.Name
kill @e[tag=nick_get]

tellraw @a [{"storage":"place","nbt":"text","color":"white","interpret": true},{"storage":"nick_get","nbt":"nick","color":"yellow"},{"storage":"scores","nbt":"text","color":"white","interpret": true}]