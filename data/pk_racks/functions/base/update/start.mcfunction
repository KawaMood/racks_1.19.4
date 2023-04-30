#> pk_racks:base/update/start
# Update the current data pack if needed

# Update depending on the current version 
# - Changes from V.2.0.3
execute if score $pk.racks.version pk.value matches ..3 run function pk_racks:base/update/revisions/4

# Set the data pack current version score
scoreboard players set $pk.racks.version pk.value 4
data modify storage pk.common:data Datapacks[{Name:"Racks"}].Version set value "2.0.3"