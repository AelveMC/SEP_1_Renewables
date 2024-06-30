# Made by Aelve
# Called from minecraft:tick
# Detects newly formed Master cartographers.
 
execute as @e[type=minecraft:villager,tag=!sep1_master_cartographer,nbt={VillagerData:{profession:"minecraft:cartographer", level:5}}] at @s run function sep_banner_patterns:set_trade

