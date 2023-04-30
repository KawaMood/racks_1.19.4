#> pk_racks:base/uninstall/marker_backup

# Set chest
setblock ~ ~ ~ air
setblock ~ ~ ~ chest

# Set Slots
data modify entity @s data.Rack.Items[0].Slot set value 0b
data modify entity @s data.Rack.Items[1].Slot set value 1b

# Set items in chest
data modify block ~ ~ ~ Items append from entity @s data.Rack.Items[]