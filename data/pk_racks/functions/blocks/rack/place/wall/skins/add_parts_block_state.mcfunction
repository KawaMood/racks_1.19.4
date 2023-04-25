#> pk_racks:blocks/rack/place/wall/skins/add_parts_block_state
# The type score has been defined earlier within function pk_racks:blocks/rack/place/trigger

# Wall supports
execute if score $part pk.temp matches 1..2 if score $type pk.temp matches 0 run data merge entity @s {block_state:{Name:"minecraft:oak_button"}}
execute if score $part pk.temp matches 1..2 if score $type pk.temp matches 1 run data merge entity @s {block_state:{Name:"minecraft:birch_button"}}
execute if score $part pk.temp matches 1..2 if score $type pk.temp matches 2 run data merge entity @s {block_state:{Name:"minecraft:spruce_button"}}
execute if score $part pk.temp matches 1..2 if score $type pk.temp matches 3 run data merge entity @s {block_state:{Name:"minecraft:dark_oak_button"}}

# Hooks
execute if score $part pk.temp matches 3..4 if score $type pk.temp matches 0 run data merge entity @s {block_state:{Name:"minecraft:oak_fence"}}
execute if score $part pk.temp matches 3..4 if score $type pk.temp matches 1 run data merge entity @s {block_state:{Name:"minecraft:birch_fence"}}
execute if score $part pk.temp matches 3..4 if score $type pk.temp matches 2 run data merge entity @s {block_state:{Name:"minecraft:spruce_fence"}}
execute if score $part pk.temp matches 3..4 if score $type pk.temp matches 3 run data merge entity @s {block_state:{Name:"minecraft:dark_oak_fence"}}

# Reset score
scoreboard players set $part pk.temp 0