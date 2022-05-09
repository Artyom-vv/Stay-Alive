scoreboard players reset * will_murderer
scoreboard players set @r will_murderer 1
function lobby:start_panel/murderer/signs/scheme/random_select/is.active
schedule function lobby:start_panel/murderer/signs/scheme/random_select/standart 3t
function lobby:start_panel/murderer/signs/scheme/info/select_loading
schedule function lobby:start_panel/murderer/signs/scheme/info/standart 6t