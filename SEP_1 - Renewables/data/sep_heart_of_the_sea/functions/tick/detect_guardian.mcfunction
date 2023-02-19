
# If entity does not have scoreboard set, initialise it.
execute as @s unless score @s sep_guardian_timer = @s sep_guardian_timer run scoreboard players set @s sep_guardian_timer 0

# Increments each second
execute if score @s sep_guardian_timer matches 0..99 run scoreboard players add @s sep_guardian_timer 1
effect give @s minecraft:glowing 2 1

# After 100 seconds, convert Guardian. Same cure time as Zombie Villager on Bedrock (100 seconds / 2000 ticks)
execute if score @s sep_guardian_timer matches 100 run function sep_heart_of_the_sea:convert_guardian
execute if score @s sep_guardian_timer matches 100 run scoreboard players reset @s sep_guardian_timer