scoreboard players reset @s drop1
execute if entity @e[type=item,distance=..3,sort=nearest,nbt={Item:{tag:{for.menu:1,exit:1}}}] run function features:menu/uses/exit
execute if entity @e[type=item,distance=..3,sort=nearest,nbt={Item:{tag:{for.menu:1,kolodec:1}}}] run function features:menu/uses/kolodec
execute if entity @e[type=item,distance=..3,sort=nearest,nbt={Item:{tag:{for.menu:1,center:1}}}] run function features:menu/uses/center
execute if entity @e[type=item,distance=..3,sort=nearest,nbt={Item:{tag:{for.menu:1,forest:1}}}] run function features:menu/uses/forest
kill @e[type=item,distance=..3,sort=nearest,nbt={Item:{tag:{for.menu:1}}}]