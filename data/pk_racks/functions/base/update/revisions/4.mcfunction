#> pk_racks:base/update/revisions/4

# Remove pk.version objective (now in blocks list)
scoreboard objectives remove pk.version

# Change custom blocks version data to Version (since nothing changed since last version, just update it to shorten the process)
data remove storage pk.racks:data Blocks.Racks[{}].version
data modify storage pk.racks:data Blocks.Racks[{}].Version set value 5