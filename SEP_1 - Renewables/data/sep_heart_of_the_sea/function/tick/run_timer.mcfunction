# Made by Aelve
# Called from function sep_heart_of_the_sea:tick/run_timer
# Only runs function once a second and on guardians within 3x3 proximity of conduit

execute if score $sepOneSecondTimer sep_one_second_timer matches 0..19 run scoreboard players add $sepOneSecondTimer sep_one_second_timer 1
execute if score $sepOneSecondTimer sep_one_second_timer matches 20 run execute as @e[type=guardian, predicate=sep_heart_of_the_sea:check_conduit] at @s run function sep_heart_of_the_sea:tick/detect_guardian
execute if score $sepOneSecondTimer sep_one_second_timer matches 20 run scoreboard players set $sepOneSecondTimer sep_one_second_timer 0
