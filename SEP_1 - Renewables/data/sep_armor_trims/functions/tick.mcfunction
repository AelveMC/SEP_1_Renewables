# Made by Aelve
# Called from minecraft:tick
# Detects newly formed Master armorers.
 
execute as @e[type=minecraft:villager,tag=!sep1_master_armorer,nbt={VillagerData:{profession:"minecraft:armorer", level:5}}] at @s run function sep_armor_trims:set_trade

