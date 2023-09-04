# Made by Aelve
# Called from sep_armor_trims:tick
# Adds a new trade to Master armorers.
 
tag @s add sep1_master_armorer

# Initialise trade
data modify entity @s Offers.Recipes append value {maxUses: 4, buyB: {id: "minecraft:air", Count: 1b}, buy: {id: "minecraft:emerald", Count: 64b}, sell: {id: "minecraft:paper", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.05f, specialPrice: 0, demand: 0, rewardExp: 1b}

# Generate trim, replace sell item in initialised trade, and delete trim.
loot spawn ~ ~ ~ loot sep_armor_trims:armor_trims

execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:coast_armor_trim_smithing_template", Count: 1b, tag: {sep_trims: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:coast_armor_trim_smithing_template", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:dune_armor_trim_smithing_template", Count: 1b, tag: {sep_trims: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:dune_armor_trim_smithing_template", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:eye_armor_trim_smithing_template", Count: 1b, tag: {sep_trims: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:eye_armor_trim_smithing_template", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:host_armor_trim_smithing_template", Count: 1b, tag: {sep_trims: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:host_armor_trim_smithing_template", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:raiser_armor_trim_smithing_template", Count: 1b, tag: {sep_trims: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:raiser_armor_trim_smithing_template", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:rib_armor_trim_smithing_template", Count: 1b, tag: {sep_trims: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:rib_armor_trim_smithing_template", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:sentry_armor_trim_smithing_template", Count: 1b, tag: {sep_trims: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:sentry_armor_trim_smithing_template", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:shaper_armor_trim_smithing_template", Count: 1b, tag: {sep_trims: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:shaper_armor_trim_smithing_template", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:silence_armor_trim_smithing_template", Count: 1b, tag: {sep_trims: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:silence_armor_trim_smithing_template", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:snout_armor_trim_smithing_template", Count: 1b, tag: {sep_trims: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:snout_armor_trim_smithing_template", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:spire_armor_trim_smithing_template", Count: 1b, tag: {sep_trims: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:spire_armor_trim_smithing_template", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:tide_armor_trim_smithing_template", Count: 1b, tag: {sep_trims: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:tide_armor_trim_smithing_template", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:vex_armor_trim_smithing_template", Count: 1b, tag: {sep_trims: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:vex_armor_trim_smithing_template", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:ward_armor_trim_smithing_template", Count: 1b, tag: {sep_trims: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:ward_armor_trim_smithing_template", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:wayfinder_armor_trim_smithing_template", Count: 1b, tag: {sep_trims: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:wayfinder_armor_trim_smithing_template", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:wild_armor_trim_smithing_template", Count: 1b, tag: {sep_trims: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:wild_armor_trim_smithing_template", Count:1b}


# Remove item
kill @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item:{tag: {sep_trims: 1b}}}]