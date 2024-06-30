# Made by Aelve
# Called from sep_ancient_debris:tick/detect_piglins
# Detects newly given items to piglins
# NOTE: The tags will not be removed if there is a stack of the item for the piglin to pick up from. There is no delay between putting the item in inventory and picking up the next item.

# -------------------------------GOLDEN APPLE--------------------------------------------------------------------------------------------------------------
# Remove tags once entity no longer holds item
execute if entity @s[tag=sep_has_gapple] unless entity @s[nbt={HandItems: [{}, {id: "minecraft:golden_apple", count: 1}]}] run tag @s remove sep_has_gapple
execute if entity @s[tag=sep_tagged_gapple] unless entity @s[nbt={HandItems: [{}, {id: "minecraft:golden_apple", count: 1}]}] run tag @s remove sep_tagged_gapple

# Can run this command exactly once, the tick the entity picks up the item (if needed).
#execute as @s[nbt={HandItems: [{}, {id: "minecraft:golden_apple", count: 1}]}] at @s if entity @s[tag=sep_has_gapple] run ......

# The tick after an entity has been tagged with 'sep_has_gapple' it will be removed here.
execute if entity @s[nbt={HandItems: [{}, {id: "minecraft:golden_apple", count: 1}]}] if entity @s[tag=sep_has_gapple] run tag @s add sep_tagged_gapple
execute if entity @s[nbt={HandItems: [{}, {id: "minecraft:golden_apple", count: 1}]}] if entity @s[tag=sep_has_gapple] run tag @s remove sep_has_gapple

# Add tag if entity has golden item, and has not been holding item beforehand.
execute if entity @s[nbt={HandItems: [{}, {id: "minecraft:golden_apple", count: 1}]}] unless entity @s[tag=sep_tagged_gapple] run tag @s add sep_has_gapple
# ----------------------------------------------------------------------------------------------------------------------------------------------------------

# -------------------------------GOLDEN AXE-----------------------------------------------------------------------------------------------------------------
# Remove tags once entity no longer holds item
execute if entity @s[tag=sep_has_gaxe] unless entity @s[nbt={HandItems: [{}, {id: "minecraft:golden_axe", count: 1}]}] run tag @s remove sep_has_gaxe
execute if entity @s[tag=sep_tagged_gaxe] unless entity @s[nbt={HandItems: [{}, {id: "minecraft:golden_axe", count: 1}]}] run tag @s remove sep_tagged_gaxe

# Can run this command exactly once, the tick the entity picks up the item (if needed).
#execute as @s[nbt={HandItems: [{}, {id: "minecraft:golden_axe", count: 1}]}] at @s if entity @s[tag=sep_has_gaxe] run ......

# The tick after an entity has been tagged with 'sep_has_gaxe' it will be removed here.
execute if entity @s[nbt={HandItems: [{}, {id: "minecraft:golden_axe", count: 1}]}] if entity @s[tag=sep_has_gaxe] run tag @s add sep_tagged_gaxe
execute if entity @s[nbt={HandItems: [{}, {id: "minecraft:golden_axe", count: 1}]}] if entity @s[tag=sep_has_gaxe] run tag @s remove sep_has_gaxe

# Add tag if entity has golden item, and has not been holding item beforehand.
execute if entity @s[nbt={HandItems: [{}, {id: "minecraft:golden_axe", count: 1}]}] unless entity @s[tag=sep_tagged_gaxe] run tag @s add sep_has_gaxe
# ----------------------------------------------------------------------------------------------------------------------------------------------------------



