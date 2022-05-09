execute unless entity @s[tag=repair30t] run function gen:repair/scores/add
function gen:repair/scores/delay/main

# function gen:repair/scores/end конец для игрока с тегом this.pl
# function gen:repair/predicates/end конец для генератора

# function gen:repair/scores/check функция проверки генератора на готовность
# execute unless entity @s[tag=need_wire,tag=need_scheme,tag=need_fuel] run условие в функции check на то, что генератор починен