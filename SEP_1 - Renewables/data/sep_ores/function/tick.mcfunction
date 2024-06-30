# Made by Aelve
# Called from minecraft:tick
# Detects newly spawned Wandering Traders.
 
execute as @e[type=minecraft:wandering_trader,tag=!sep_trader] at @s run function sep_ores:set_trade
