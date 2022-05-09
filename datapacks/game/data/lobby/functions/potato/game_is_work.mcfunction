scoreboard players remove *p_game_timer p_timer 1



# Картоха сдохла из-за таймера
execute as @p[team=potato] if score @s p_timer matches 0 run function lobby:potato/endpotato
# Картоха сдохла из-за естественной смерти
execute as @p[team=potato,scores={p_death=1..}] at @s run function lobby:potato/endpotato