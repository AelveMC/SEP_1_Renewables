# Made by Aelve
# Called from minecraft:tick
# Detects newly formed Master masons.
 
execute as @e[type=minecraft:villager,tag=!sep1_master_mason,nbt={VillagerData:{profession:"minecraft:mason", level:5}}] at @s run function sep_pottery_sherds:set_trade

