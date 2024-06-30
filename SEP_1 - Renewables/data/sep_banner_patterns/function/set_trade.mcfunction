# Made by Aelve
# Called from sep_banner_patterns:tick
# Adds a new trade to Master cartographers.
 
tag @s add sep1_master_cartographer

# Initialise trade
data modify entity @s Offers.Recipes append value {maxUses: 12, buyB: {id: "minecraft:compass", count: 1}, buy: {id: "minecraft:emerald", count: 15}, sell: {id: "minecraft:paper", count: 1}, xp: 10, uses: 0, priceMultiplier: 0.2f, specialPrice: 0, demand: 0, rewardExp: 1b}

# Generate map, replace sell item in initialised trade, and delete map.
loot spawn ~ ~ ~ loot sep_banner_patterns:ancient_city_map
data modify entity @s Offers.Recipes[-1].sell set from entity @n[type=item,distance=..1,nbt={Item:{id: "minecraft:filled_map",components:{"minecraft:map_color":9876543}}}] Item
kill @n[type=item,distance=..1,nbt={Item:{id: "minecraft:filled_map",components:{"minecraft:map_color":9876543}}}]