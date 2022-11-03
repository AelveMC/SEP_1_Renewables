# Made by Aelve
# Called from minecraft:tick
# Detects zombies that can be turned into husks, then converts them.

# Tag zombies that meet the requirements. Initially just checks if they are on fire.
execute as @e[type=minecraft:zombie,nbt=!{Fire:-1s}] at @s run function sep_sand:tag_zombie

# Change tagged zombie to husk.
execute as @e[type=minecraft:zombie,tag=sep_sunburnt,nbt={Fire:-1s}] at @s run function sep_sand:convert_zombie


