#> pk_racks:base/update/start
# Update the current data pack if needed

# Set the data pack current version score
scoreboard players set $pk.racks.version pk.value 3
data modify storage pk.common:data Datapacks[{Name:"Racks"}].Version set value "2.0.2"