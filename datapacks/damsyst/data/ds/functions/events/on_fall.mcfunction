#data modify storage reason text set value '{"text":"ОТ ПАДЕНИЯ"}'
# TODO: КОТ, ЧТО ТАКОЕ TIMER.RES ??? ДАМАГ НЕ РАБОТАЕТ
function ds:randmes/randmesfall
execute if entity @s[scores={fall=900..,timer.res=0}] run function ds:predicates/remove_damage
execute if entity @s[scores={fall=600..,timer.res=0}] run function ds:predicates/slowness
scoreboard players reset @s fall