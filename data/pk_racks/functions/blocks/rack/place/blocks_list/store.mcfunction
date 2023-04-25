#> pk_racks:blocks/rack/place/blocks_list/store
# Store the Waystone info from the controller

# Clear storage
data remove storage pk.common:data Temp.Rack

# Set version
execute store result storage pk.common:data Temp.Rack.version int 1 run scoreboard players get $pk.racks.version pk.value

# Set component score id
execute store result storage pk.common:data Temp.Rack.id int 1 run scoreboard players get $next pk.custom_block.component.id

# Set facing
execute store result storage pk.common:data Temp.Rack.Facing byte 1 run scoreboard players get $facing pk.temp

# Is a wall rack
execute store result storage pk.common:data Temp.Rack.Wall byte 1 run scoreboard players get $wall pk.temp

# Set default's item rotation variant
# - Ground : 0b to 7b = (45° * value) 0-180 skipped for X axis and 90-270 skipped for Z axis
# - Wall : 0b = vertical, 1b = horizontal
data modify storage pk.common:data Temp.Rack.ItemRotation set value 0b

# Set default Items values
data modify storage pk.common:data Temp.Rack.Items set value [{},{}]

# Set type (used skin)
data modify storage pk.common:data Temp.Rack.Type set from storage pk.common:data Temp.Item.tag.SkullOwner.Properties.textures[0].Signature

# Set owner data
data modify storage pk.common:data Temp.Rack.Owner.UUID set from entity @a[tag=pk.temp.current.player,distance=..10,limit=1] UUID
execute store result storage pk.common:data Temp.Rack.Owner.id int 1 run scoreboard players get @a[tag=pk.temp.current.player,distance=..10,limit=1] pk.player.id

# Set coordinates
data modify storage pk.common:data Temp.Rack.x set from storage pk.common:data Temp.Block.x
data modify storage pk.common:data Temp.Rack.y set from storage pk.common:data Temp.Block.y
data modify storage pk.common:data Temp.Rack.z set from storage pk.common:data Temp.Block.z

# Set dimension
function pk_racks:blocks/rack/place/blocks_list/set_dimension_id

# Store current block's info into the list
data modify storage pk.racks:data Blocks.Racks append from storage pk.common:data Temp.Rack