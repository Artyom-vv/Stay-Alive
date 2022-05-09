scoreboard players add *it_check_empty temp 1
scoreboard players operation tmp_score temp += @s tmp_sboards

execute unless score *it_check_empty temp >= *length_top temp run function features:whoved/empty_check
execute if score *it_check_empty temp >= *length_top temp if score tmp_score temp matches ..0 run function features:whoved/empty_top