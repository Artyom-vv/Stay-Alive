scoreboard objectives add gen_markers dummy
scoreboard players set 5 gen_markers 5
scoreboard objectives add repair_delay dummy
scoreboard players set @a repair_delay 0
scoreboard objectives add click_villager minecraft.custom:minecraft.talked_to_villager

scoreboard objectives add chest_open minecraft.used:minecraft.chest_minecart
scoreboard objectives add mc.pages dummy

scoreboard objectives add fuel_gen dummy
scoreboard objectives add tmp dummy
scoreboard players set *const circle_timer 12
scoreboard objectives add circle_timer dummy
scoreboard objectives add circle_rng dummy
scoreboard players set *tmp tmp 0
data modify storage item text set value '{"text":"item Шаблон"}'
data modify storage text_compile health set value '{"text":"health"}'
data modify storage text_compile gen_progress set value '{"text":""}'
data modify storage text_compile between_1 set value '{"text":"                                      "}'

scoreboard objectives add genSounds_start dummy
scoreboard objectives add genSounds_cycle dummy

scoreboard objectives add gen_r_distance dummy
scoreboard players set @a gen_r_distance 0
scoreboard objectives add gen_c_detail dummy
scoreboard objectives add gen_i_summon dummy
scoreboard objectives add gen_progress dummy
scoreboard objectives add gen_RNDprogress dummy
scoreboard players set active gen_progress 650
scoreboard players set @a dbd_hp_anim 0
# teams
team add general
team add alive
team add murderer
team add dead
team add lobby
scoreboard objectives add ID.gens dummy
forceload add 0 0 0 0
scoreboard objectives add drop minecraft.custom:minecraft.drop