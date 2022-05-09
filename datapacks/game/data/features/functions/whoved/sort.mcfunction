function features:whoved/iterations
execute as @a run function features:whoved/get_tag
execute store result score *length_top temp if entity @a[tag=done]
execute if score *length_top temp matches 2.. as @a[tag=done] run function features:whoved/empty_check
