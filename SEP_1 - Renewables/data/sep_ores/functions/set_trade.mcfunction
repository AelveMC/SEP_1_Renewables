# Made by Aelve
# Called from sep_banner_patterns:tick
# Adds a new ore trade to Wandering Trader.
 
tag @s add sep_trader

# Initialise trade
data modify entity @s Offers.Recipes append value {maxUses: 8, buyB: {id: "minecraft:air", Count: 1b}, buy: {id: "minecraft:emerald", Count: 8b}, sell: {id: "minecraft:paper", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.05f, specialPrice: 0, demand: 0, rewardExp: 1b}

# Generate ore, replace sell item in initliased trade, and delete ore.
loot spawn ~ ~ ~ loot sep_ores:ores

execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:coal_ore", Count: 1b, tag: {sep_ore: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:coal_ore", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:iron_ore", Count: 1b, tag: {sep_ore: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:iron_ore", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:copper_ore", Count: 1b, tag: {sep_ore: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:copper_ore", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:lapis_ore", Count: 1b, tag: {sep_ore: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:lapis_ore", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:redstone_ore", Count: 1b, tag: {sep_ore: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:redstone_ore", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:gold_ore", Count: 1b, tag: {sep_ore: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:gold_ore", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:emerald_ore", Count: 1b, tag: {sep_ore: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:emerald_ore", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:diamond_ore", Count: 1b, tag: {sep_ore: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:diamond_ore", Count:1b}

# Remove item
kill @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item:{tag: {sep_ore: 1b}}}]