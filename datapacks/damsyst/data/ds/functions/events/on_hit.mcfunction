#data modify storage reason text set value '{"text":"ОТ РУКИ МАНЬЯКА"}'
function ds:randmes/randmeshit
tag @s add ShouldTp
effect give @a[nbt={HurtTime:10s},team=general] minecraft:speed 2 1 true
execute as @p[nbt={HurtTime:10s},team=general,scores={timer.res=0}] run function ds:predicates/remove_damaged
scoreboard players reset @s dbd_hit