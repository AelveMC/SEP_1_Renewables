# Made by Aelve
# Called from function sep_lilypad:raycast/cast
# Places lilypads randomly around the bonemealed block. Works if selected block is at, or one above, water level.

# Place structure of armor_stands
place template sep_lilypad:lilypads ~-3 ~1 ~-3
place template sep_lilypad:lilypads ~-3 ~0 ~-3

# Each armor_stand has a chance of placing a lilypad. If an item appears at an armor_stand, then a lilypad is placed later.
execute at @e[type=minecraft:armor_stand,tag=sep_temp_lily] run loot spawn ~ ~ ~ loot sep_lilypad:lilypad_chance

# Place a lilypad if the armor_stand and item are in the same place.
execute at @e[type=minecraft:armor_stand,tag=sep_temp_lily] run execute if items entity @e[type=item,sort=nearest,limit=1,distance=..0] container.0 minecraft:dirt[minecraft:custom_data={sep_lily:true}] if block ~ ~-1 ~ water if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:lily_pad

# Remove entities
execute as @e[type=item] if items entity @s container.0 minecraft:dirt[minecraft:custom_data={sep_lily:true}] at @s run kill @s
kill @e[type=armor_stand,tag=sep_temp_lily]
