#> pk_racks:blocks/rack/place/ground/skins/add_parts_block_state
# The type score has been defined earlier within function pk_racks:blocks/rack/place/trigger

execute if score $type pk.temp matches 0 run data merge entity @s {block_state:{Name:"minecraft:oak_fence"}}
execute if score $type pk.temp matches 1 run data merge entity @s {block_state:{Name:"minecraft:birch_fence"}}
execute if score $type pk.temp matches 2 run data merge entity @s {block_state:{Name:"minecraft:spruce_fence"}}
execute if score $type pk.temp matches 3 run data merge entity @s {block_state:{Name:"minecraft:dark_oak_fence"}}