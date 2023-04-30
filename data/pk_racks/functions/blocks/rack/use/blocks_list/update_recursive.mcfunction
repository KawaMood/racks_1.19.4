#> pk_racks:blocks/rack/use/blocks_list/update_recursive

# Set the component id
execute store result score $item pk.custom_block.component.id run data get storage pk.common:data Temp.Array.Search[-1].id

# Update data if component id is matching
execute if score $item pk.custom_block.component.id = $temp pk.custom_block.component.id run data modify storage pk.common:data Temp.Array.Search[-1] set from storage pk.common:data Temp.Rack

# Store item
data modify storage pk.common:data Temp.Array.New prepend from storage pk.common:data Temp.Array.Search[-1]

# Recursive call
data remove storage pk.common:data Temp.Array.Search[-1]
execute if data storage pk.common:data Temp.Array.Search[{}] run function pk_racks:blocks/rack/use/blocks_list/update_recursive