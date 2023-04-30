#> pk_racks:base/uninstall/remove_custom_block

# Remove the barrier block (if ground)
execute if entity @s[nbt={data:{Rack:{Wall:0b}}}] run setblock ~ ~ ~ air

# Backup the potential items
execute if data entity @s data.Rack.Items[{}].id run function pk_racks:base/uninstall/marker_backup

# Remove all id-matching components
execute align xyz run kill @e[type=#pk_racks:custom_block/components,tag=pk.racks.rack.component,dx=0]

# Unload the targeted chunk
forceload remove ~ ~

# Remove the current entity
kill @s