# Made by Aelve
# Called from function sep_small_dripleaf:raycast/cast
# Places small drioleaves randomly around the bonemealed block. Works if selected block is at, or one above, water level.

# Place structure of armor_stands
place template sep_small_dripleaf:dripleaf ~-3 ~1 ~-3
place template sep_small_dripleaf:dripleaf ~-3 ~0 ~-3

# Each armor_stand has a chance of placing a small dripleaf. If an item appears at an armor_stand, then a dripleaf is placed later.
execute at @e[type=minecraft:armor_stand,tag=sep_temp_drip] run loot spawn ~ ~ ~ loot sep_small_dripleaf:dripleaf_chance

# Place a small dripleaf if the armor stand and item are in the same place.
execute at @e[type=minecraft:armor_stand,tag=sep_temp_drip] run execute if items entity @n[type=item,distance=..0] container.0 minecraft:dirt[minecraft:custom_data={sep_drip:true}] run function sep_small_dripleaf:grow_dripleaf

# Remove entities
execute as @e[type=item] if items entity @s container.0 minecraft:dirt[minecraft:custom_data={sep_drip:true}] at @s run kill @s
kill @e[type=armor_stand,tag=sep_temp_drip]



