execute unless entity @a[team=general] if score *canPlay game matches 1 run function features:game_end/survivors_unless
execute unless entity @a[team=murderer] if score *canPlay game matches 1 run function features:game_end/murderer_unless

execute positioned 285 104 258 as @a[team=general,dx=6,dy=3] run function features:survivor_leave_location