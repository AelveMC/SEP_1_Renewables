# Made by Aelve
# Called from function sep_small_dripleaf:raycast/cast
# Places small drioleaves randomly around the bonemealed block. Works if selected block is at, or one above, water level.

# Place structure of armor_stands
place template sep_small_dripleaf:dripleaf ~-3 ~1 ~-3
place template sep_small_dripleaf:dripleaf ~-3 ~0 ~-3

# Each armor_stand has a chance of placing a small dripleaf. If an item appears at an armor_stand, then a dripleaf is placed later.
execute at @e[type=minecraft:armor_stand,tag=sep_temp_drip] run loot spawn ~ ~ ~ loot sep_small_dripleaf:dripleaf_chance

# Place a small dripleaf if the armor stand and item are in the same place.
execute at @e[type=minecraft:armor_stand,tag=sep_temp_drip] run execute if entity @e[type=item,sort=nearest,limit=1,distance=..0,nbt={Item: {id: "minecraft:dirt", Count: 1b, tag: {sep_drip: 1b}}}] run function sep_small_dripleaf:grow_dripleaf

# Remove entities
kill @e[type=item,nbt={Item:{tag: {sep_drip: 1b}}}]
kill @e[type=armor_stand,tag=sep_temp_drip]



