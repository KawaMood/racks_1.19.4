#> pk_racks:base/uninstall/remove_custom_block

# Remove block container and all id-matching components
setblock ~ ~ ~ air
setblock ~ ~1 ~ air
kill @e[type=#pk_racks:custom_block/components,tag=pk.racks.waystone.component,distance=..10]

# Unload the targeted chunk
forceload remove ~ ~

# Remove the current entity
kill @s