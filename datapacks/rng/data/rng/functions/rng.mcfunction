scoreboard players operation calc rng *= seed rng
scoreboard players operation calc rng *= 1103515245 const
scoreboard players add calc rng 12345
execute if score calc rng matches ..0 run scoreboard players operation calc rng *= -1 const
scoreboard players operation calc rng /= 32768 const
execute if score calc rng matches ..0 run scoreboard players set calc rng 0
scoreboard players operation calc rng %= max rng

scoreboard players add calc rng 1
scoreboard players add seed rng 1
