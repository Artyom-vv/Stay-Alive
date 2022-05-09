function lobby:start_panel/murderer/signs/scheme/select/is.active
scoreboard players reset * will_murderer
scoreboard players set @s will_murderer 1
team leave @p[scores={will_murderer=1}]
function lobby:start_panel/murderer/signs/scheme/info/select_nick
team join lobby @p[scores={will_murderer=1}]
schedule function lobby:start_panel/murderer/signs/scheme/select/standart 3t