#> pk_racks:blocks/rack/remove/from_controller
#@context as controller, at controller

# Set scores
scoreboard players operation $temp pk.custom_block.component.id = @s pk.custom_block.component.id

# Tag the matching components
tag @e[type=#pk_racks:custom_block/components,tag=pk.racks.rack.component,distance=..2,predicate=pk_racks:scores/custom_block/component_id_matching] add pk.temp.current.component

# Prepare data from controller
data modify storage pk.common:data Temp.Rack set from entity @s data.Rack

# Drop content
execute if data storage pk.common:data Temp.Rack.Items[0].id run function pk_racks:blocks/rack/remove/drop_content/1
execute if data storage pk.common:data Temp.Rack.Items[1].id run function pk_racks:blocks/rack/remove/drop_content/2

# Drop item and run correct blocks break particles depending on the skin
execute if data storage pk.common:data Temp.Rack{Type:"oak"} run function pk_racks:blocks/rack/remove/skins/oak
execute if data storage pk.common:data Temp.Rack{Type:"birch"} run function pk_racks:blocks/rack/remove/skins/birch
execute if data storage pk.common:data Temp.Rack{Type:"spruce"} run function pk_racks:blocks/rack/remove/skins/spruce
execute if data storage pk.common:data Temp.Rack{Type:"dark_oak"} run function pk_racks:blocks/rack/remove/skins/dark_oak

# Remove block
execute if block ~ ~ ~ barrier run setblock ~ ~ ~ air

# Remove from the block list
function pk_racks:blocks/rack/remove/block_list/remove

# Kill the matching components
kill @e[type=#pk_racks:custom_block/components,tag=pk.temp.current.component,distance=..2]

# Animations
playsound block.wood.break block @a[distance=..30] ~ ~ ~