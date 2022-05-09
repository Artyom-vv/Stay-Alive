scoreboard players reset @s rc.click
scoreboard players set @s return 0
function features:menu/perebor
item replace entity @s container.0 with green_wool{for.menu:1,forest:1}
item replace entity @s container.1 with green_wool{for.menu:1,center:1}
item replace entity @s container.2 with green_wool{for.menu:1,kolodec:1}
item replace entity @s container.8 with red_wool{for.menu:1,exit:1}