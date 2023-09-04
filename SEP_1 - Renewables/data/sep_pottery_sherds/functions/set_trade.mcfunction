# Made by Aelve
# Called from sep_pottery_sherds:tick
# Adds a new trade to Master mason.
 
tag @s add sep1_master_mason

# Initialise trade
data modify entity @s Offers.Recipes append value {maxUses: 8, buyB: {id: "minecraft:clay_ball", Count: 1b}, buy: {id: "minecraft:emerald", Count: 16b}, sell: {id: "minecraft:paper", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.05f, specialPrice: 0, demand: 0, rewardExp: 1b}

# Generate sherd, replace sell item in initialised trade, and delete sherd.
loot spawn ~ ~ ~ loot sep_pottery_sherds:pottery_sherds

execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:angler_pottery_sherd", Count: 1b, tag: {sep_sherds: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:angler_pottery_sherd", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:archer_pottery_sherd", Count: 1b, tag: {sep_sherds: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:archer_pottery_sherd", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:arms_up_pottery_sherd", Count: 1b, tag: {sep_sherds: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:arms_up_pottery_sherd", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:blade_pottery_sherd", Count: 1b, tag: {sep_sherds: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:blade_pottery_sherd", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:brewer_pottery_sherd", Count: 1b, tag: {sep_sherds: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:brewer_pottery_sherd", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:burn_pottery_sherd", Count: 1b, tag: {sep_sherds: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:burn_pottery_sherd", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:danger_pottery_sherd", Count: 1b, tag: {sep_sherds: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:danger_pottery_sherd", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:explorer_pottery_sherd", Count: 1b, tag: {sep_sherds: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:explorer_pottery_sherd", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:friend_pottery_sherd", Count: 1b, tag: {sep_sherds: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:friend_pottery_sherd", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:heart_pottery_sherd", Count: 1b, tag: {sep_sherds: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:heart_pottery_sherd", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:heartbreak_pottery_sherd", Count: 1b, tag: {sep_sherds: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:heartbreak_pottery_sherd", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:howl_pottery_sherd", Count: 1b, tag: {sep_sherds: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:howl_pottery_sherd", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:miner_pottery_sherd", Count: 1b, tag: {sep_sherds: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:miner_pottery_sherd", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:mourner_pottery_sherd", Count: 1b, tag: {sep_sherds: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:mourner_pottery_sherd", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:plenty_pottery_sherd", Count: 1b, tag: {sep_sherds: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:plenty_pottery_sherd", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:prize_pottery_sherd", Count: 1b, tag: {sep_sherds: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:prize_pottery_sherd", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:sheaf_pottery_sherd", Count: 1b, tag: {sep_sherds: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:sheaf_pottery_sherd", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:shelter_pottery_sherd", Count: 1b, tag: {sep_sherds: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:shelter_pottery_sherd", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:skull_pottery_sherd", Count: 1b, tag: {sep_sherds: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:skull_pottery_sherd", Count:1b}
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item: {id: "minecraft:snort_pottery_sherd", Count: 1b, tag: {sep_sherds: 1b}}}] run data modify entity @s Offers.Recipes[-1].sell set value {id:"minecraft:snort_pottery_sherd", Count:1b}

# Remove item
kill @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item:{tag: {sep_sherds: 1b}}}]