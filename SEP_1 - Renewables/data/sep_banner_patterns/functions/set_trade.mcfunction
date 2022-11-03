# Made by Aelve
# Called from sep_banner_patterns:tick
# Adds a new trade to Master cartographers.
 
tag @s add sep1_master_cartographer

# Initialise trade
data modify entity @s Offers.Recipes append value {maxUses: 12, buyB: {id: "minecraft:compass", Count: 1b}, buy: {id: "minecraft:emerald", Count: 15b}, sell: {id: "minecraft:paper", Count: 1b}, xp: 10, uses: 0, priceMultiplier: 0.2f, specialPrice: 0, demand: 0, rewardExp: 1b}

# Generate map, replace sell item in initliased trade, and delete map.
loot spawn ~ ~ ~ loot sep_banner_patterns:ancient_city_map
data modify entity @s Offers.Recipes[-1].sell set from entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:filled_map", tag: {display: {MapColor: 9876543}}}}] Item
kill @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:filled_map", tag: {display: {MapColor: 9876543}}}}]