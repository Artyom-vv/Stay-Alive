tag @s add filter
execute as @p[tag=this] at @s if predicate gen:looking_at_filter run function gen:repair/details/raycast/end
tag @s remove filter