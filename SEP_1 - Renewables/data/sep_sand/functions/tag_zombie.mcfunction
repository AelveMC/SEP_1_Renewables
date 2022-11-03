# Made by Aelve
# Called from sep_sand:tick/detect_burning_zombies
# For any zombie on fire; if it is day time AND it has sky access AND it has nothing on its head, then it will be tagged. That tag is used later to turn it into a husk.

# For checking current day time.
scoreboard objectives add sep_undead_burn_time dummy
execute store result score $undead_burn_dummy sep_undead_burn_time run time query daytime

# Check requirements and tag.
execute unless score $undead_burn_dummy sep_undead_burn_time matches 12541..23460 if predicate sep_sand:check_sky unless entity @s[nbt={ArmorItems: [{}, {}, {}, {Count: 1b}]}] run tag @s add sep_sunburnt