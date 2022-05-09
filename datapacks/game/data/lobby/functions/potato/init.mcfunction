team add potaters
scoreboard objectives add p_hit minecraft.custom:minecraft.damage_taken
scoreboard objectives add p_game dummy
scoreboard objectives add p_timer dummy
scoreboard objectives add p_fall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add p_udar minecraft.custom:minecraft.damage_dealt
scoreboard objectives add p_death deathCount

bossbar add 102 [{"text":"Игра в КАРТОШКУ"}]
bossbar set minecraft:102 color yellow
bossbar set minecraft:102 style notched_20

team add potato
team modify potato color red
team modify potato prefix {"text":"Картошка: "}

team add potato_dead
team modify potato_dead color gray
team modify potato_dead prefix {"text":"Мёртвый: "}