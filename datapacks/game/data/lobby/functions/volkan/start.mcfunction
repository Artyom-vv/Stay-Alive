function lobby:volkan/setplatf
scoreboard players set game v_game 1
scoreboard players set @a v_timer2 0
execute at @e[tag=markervolk] run tag @a[distance=..20] add in.game