# Made by Aelve
# Called from sep_pottery_sherds:tick
# Adds a new trade to Master mason.
 
tag @s add sep1_master_mason

# Initialise trade
data modify entity @s Offers.Recipes append value {maxUses: 8, buyB: {id: "minecraft:clay_ball", count: 1}, buy: {id: "minecraft:emerald", count: 16}, sell: {id: "minecraft:paper", count: 1}, xp: 1, uses: 0, priceMultiplier: 0.05f, specialPrice: 0, demand: 0, rewardExp: 1b}

# Generate sherd, replace sell item in initialised trade, and delete sherd.
loot spawn ~ ~ ~ loot sep_pottery_sherds:pottery_sherds

execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:angler_pottery_sherd[minecraft:custom_data={sep_sherds:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:angler_pottery_sherd", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:archer_pottery_sherd[minecraft:custom_data={sep_sherds:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:archer_pottery_sherd", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:arms_up_pottery_sherd[minecraft:custom_data={sep_sherds:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:arms_up_pottery_sherd", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:blade_pottery_sherd[minecraft:custom_data={sep_sherds:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:blade_pottery_sherd", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:brewer_pottery_sherd[minecraft:custom_data={sep_sherds:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:brewer_pottery_sherd", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:burn_pottery_sherd[minecraft:custom_data={sep_sherds:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:burn_pottery_sherd", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:danger_pottery_sherd[minecraft:custom_data={sep_sherds:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:danger_pottery_sherd", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:explorer_pottery_sherd[minecraft:custom_data={sep_sherds:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:explorer_pottery_sherd", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:friend_pottery_sherd[minecraft:custom_data={sep_sherds:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:friend_pottery_sherd", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:heart_pottery_sherd[minecraft:custom_data={sep_sherds:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:heart_pottery_sherd", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:heartbreak_pottery_sherd[minecraft:custom_data={sep_sherds:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:heartbreak_pottery_sherd", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:howl_pottery_sherd[minecraft:custom_data={sep_sherds:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:howl_pottery_sherd", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:miner_pottery_sherd[minecraft:custom_data={sep_sherds:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:miner_pottery_sherd", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:mourner_pottery_sherd[minecraft:custom_data={sep_sherds:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:mourner_pottery_sherd", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:plenty_pottery_sherd[minecraft:custom_data={sep_sherds:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:plenty_pottery_sherd", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:prize_pottery_sherd[minecraft:custom_data={sep_sherds:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:prize_pottery_sherd", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:sheaf_pottery_sherd[minecraft:custom_data={sep_sherds:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:sheaf_pottery_sherd", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:shelter_pottery_sherd[minecraft:custom_data={sep_sherds:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:shelter_pottery_sherd", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:skull_pottery_sherd[minecraft:custom_data={sep_sherds:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:skull_pottery_sherd", count: 1}
execute if items entity @e[type=item,sort=nearest,limit=1,distance=..1] container.0 minecraft:snort_pottery_sherd[minecraft:custom_data={sep_sherds:true}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:snort_pottery_sherd", count: 1}

# Remove item
execute as @e[type=item,sort=nearest,limit=1,distance=..1] if items entity @s container.0 *[minecraft:custom_data={sep_sherds:true}] at @s run kill @s