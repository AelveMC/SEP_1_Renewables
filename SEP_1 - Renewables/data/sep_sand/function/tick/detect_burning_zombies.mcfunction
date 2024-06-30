# Made by Aelve
# Called from minecraft:tick
# Detects zombies that can be turned into husks, then converts them.

# Tag zombies that meet the requirements. Initially just checks if they are on fire.
execute as @e[type=minecraft:zombie,nbt=!{Fire:-1s}] at @s run function sep_sand:tag_zombie

# Remove score from zombie once it stops burning. Required if burnt from something other than sunlight.
execute as @e[type=minecraft:zombie,nbt={Fire:-1s}] at @s run execute if score @s sep_zombie_burn_timer matches 20 run scoreboard players reset @s sep_zombie_burn_timer

# Change tagged zombie to husk once it is no longer on fire.
execute as @e[type=minecraft:zombie,tag=sep_sunburnt,nbt={Fire:-1s}] at @s run function sep_sand:convert_zombie


