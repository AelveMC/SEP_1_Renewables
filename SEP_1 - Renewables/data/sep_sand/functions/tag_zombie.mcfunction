# Made by Aelve
# Called from sep_sand:tick/detect_burning_zombies
# For any zombie on fire, check requirements and tag. That tag is used later to turn it into a husk.


# For checking zombie has burnt for at least one second.
scoreboard objectives add sep_zombie_burn_timer dummy
execute as @s unless score @s sep_zombie_burn_timer = @s sep_zombie_burn_timer run scoreboard players set @s sep_zombie_burn_timer 0
execute if score @s sep_zombie_burn_timer matches 0..19 run scoreboard players add @s sep_zombie_burn_timer 1

# For checking current day time.
scoreboard objectives add sep_undead_burn_time dummy
execute store result score $undead_burn_dummy sep_undead_burn_time run time query daytime

# Requirements:
#	if it is day time, AND 
#	if it has burnt for at least one second, AND
#	if it has sky access, AND
#	if it has nothing on its head, 
# then it will be tagged.
execute unless score $undead_burn_dummy sep_undead_burn_time matches 12541..23460 if score @s sep_zombie_burn_timer matches 20 if predicate sep_sand:check_sky unless entity @s[nbt={ArmorItems: [{}, {}, {}, {Count: 1b}]}] unless predicate sep_sand:check_raining run tag @s add sep_sunburnt

