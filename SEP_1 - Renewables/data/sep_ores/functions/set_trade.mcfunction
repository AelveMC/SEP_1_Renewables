# Made by Aelve
# Called from sep_banner_patterns:tick
# Adds a new ore trade to Wandering Trader.
 
tag @s add sep_trader

# Initialise trade
data modify entity @s Offers.Recipes append value {maxUses: 8, buyB: {id: "minecraft:air", count: 1}, buy: {id: "minecraft:emerald", count: 8}, sell: {id: "minecraft:paper", count: 1}, xp: 1, uses: 0, priceMultiplier: 0.05f, specialPrice: 0, demand: 0, rewardExp: 1b}

# Generate ore, replace sell item in initliased trade, and delete ore.
loot spawn ~ ~ ~ loot sep_ores:ores

execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:coal_ore[minecraft:custom_data={sep_ore:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:coal_ore", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:iron_ore[minecraft:custom_data={sep_ore:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:iron_ore", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:copper_ore[minecraft:custom_data={sep_ore:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:copper_ore", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:lapis_ore[minecraft:custom_data={sep_ore:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:lapis_ore", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:redstone_ore[minecraft:custom_data={sep_ore:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:redstone_ore", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:gold_ore[minecraft:custom_data={sep_ore:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:gold_ore", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:emerald_ore[minecraft:custom_data={sep_ore:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:emerald_ore", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:diamond_ore[minecraft:custom_data={sep_ore:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:diamond_ore", count: 1}

# Remove item
execute as @e[type=item,sort=nearest,limit=1,distance=..1] if items entity @s container.0 *[minecraft:custom_data={sep_ore:true}] at @s run kill @s