# Made by Aelve
# Called from minecraft:tick
# Only runs function on piglins who are admiring an item.
 
execute as @e[type=piglin, nbt={Brain: {memories: {"minecraft:admiring_item": {}}}}] run function sep_ancient_debris:tick/piglins_holding_items
