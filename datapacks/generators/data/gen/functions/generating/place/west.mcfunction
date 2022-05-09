summon shulker ~ ~ ~ {Tags:["gen_dependencies"],Silent:1b,NoAI:1b}
summon marker ~ ~ ~ {Tags:["gen","new","west"]}
summon armor_stand ~ ~0.09 ~ {Rotation:[90f,0f],Tags:["gen_dependencies","model","east"],Invisible:1b,Invulnerable:1b,Marker:1b}
function gen:generating/place/villagers
tag @e remove new