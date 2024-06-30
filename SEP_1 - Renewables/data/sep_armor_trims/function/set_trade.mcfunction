# Made by Aelve
# Called from sep_armor_trims:tick
# Adds a new trade to Master armorers.
 
tag @s add sep1_master_armorer

# Initialise trade
data modify entity @s Offers.Recipes append value {maxUses: 4, buyB: {id: "minecraft:air", count: 1}, buy: {id: "minecraft:emerald", count: 64}, sell: {id: "minecraft:paper", count: 1}, xp: 1, uses: 0, priceMultiplier: 0.05f, specialPrice: 0, demand: 0, rewardExp: 1b}

# Generate trim, replace sell item in initialised trade, and delete trim.
loot spawn ~ ~ ~ loot sep_armor_trims:armor_trims

execute if items entity @n[type=item,distance=..1] container.0 minecraft:bolt_armor_trim_smithing_template[minecraft:custom_data={sep_trims:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:bolt_armor_trim_smithing_template", count: 1}
execute if items entity @n[type=item,distance=..1] container.0 minecraft:coast_armor_trim_smithing_template[minecraft:custom_data={sep_trims:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:coast_armor_trim_smithing_template", count: 1}
execute if items entity @n[type=item,distance=..1] container.0 minecraft:dune_armor_trim_smithing_template[minecraft:custom_data={sep_trims:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:dune_armor_trim_smithing_template", count: 1}
execute if items entity @n[type=item,distance=..1] container.0 minecraft:eye_armor_trim_smithing_template[minecraft:custom_data={sep_trims:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:eye_armor_trim_smithing_template", count: 1}
execute if items entity @n[type=item,distance=..1] container.0 minecraft:flow_armor_trim_smithing_template[minecraft:custom_data={sep_trims:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:flow_armor_trim_smithing_template", count: 1}
execute if items entity @n[type=item,distance=..1] container.0 minecraft:host_armor_trim_smithing_template[minecraft:custom_data={sep_trims:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:host_armor_trim_smithing_template", count: 1}
execute if items entity @n[type=item,distance=..1] container.0 minecraft:raiser_armor_trim_smithing_template[minecraft:custom_data={sep_trims:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:raiser_armor_trim_smithing_template", count: 1}
execute if items entity @n[type=item,distance=..1] container.0 minecraft:rib_armor_trim_smithing_template[minecraft:custom_data={sep_trims:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:rib_armor_trim_smithing_template", count: 1}
execute if items entity @n[type=item,distance=..1] container.0 minecraft:sentry_armor_trim_smithing_template[minecraft:custom_data={sep_trims:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:sentry_armor_trim_smithing_template", count: 1}
execute if items entity @n[type=item,distance=..1] container.0 minecraft:shaper_armor_trim_smithing_template[minecraft:custom_data={sep_trims:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:shaper_armor_trim_smithing_template", count: 1}
execute if items entity @n[type=item,distance=..1] container.0 minecraft:silence_armor_trim_smithing_template[minecraft:custom_data={sep_trims:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:silence_armor_trim_smithing_template", count: 1}
execute if items entity @n[type=item,distance=..1] container.0 minecraft:snout_armor_trim_smithing_template[minecraft:custom_data={sep_trims:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:snout_armor_trim_smithing_template", count: 1}
execute if items entity @n[type=item,distance=..1] container.0 minecraft:spire_armor_trim_smithing_template[minecraft:custom_data={sep_trims:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:spire_armor_trim_smithing_template", count: 1}
execute if items entity @n[type=item,distance=..1] container.0 minecraft:tide_armor_trim_smithing_template[minecraft:custom_data={sep_trims:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:tide_armor_trim_smithing_template", count: 1}
execute if items entity @n[type=item,distance=..1] container.0 minecraft:vex_armor_trim_smithing_template[minecraft:custom_data={sep_trims:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:vex_armor_trim_smithing_template", count: 1}
execute if items entity @n[type=item,distance=..1] container.0 minecraft:ward_armor_trim_smithing_template[minecraft:custom_data={sep_trims:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:ward_armor_trim_smithing_template", count: 1}
execute if items entity @n[type=item,distance=..1] container.0 minecraft:wayfinder_armor_trim_smithing_template[minecraft:custom_data={sep_trims:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:wayfinder_armor_trim_smithing_template", count: 1}
execute if items entity @n[type=item,distance=..1] container.0 minecraft:wild_armor_trim_smithing_template[minecraft:custom_data={sep_trims:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:wild_armor_trim_smithing_template", count: 1}

execute as @n[type=item,distance=..1] if items entity @s container.0 *[minecraft:custom_data={sep_trims:true}] at @s run kill @s