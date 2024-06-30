# Made by Aelve
# Called from minecraft:load
# Sets up one timer for each tick, and one for counting seconds per entity.

scoreboard objectives add sep_guardian_timer dummy
scoreboard objectives add sep_one_second_timer dummy

scoreboard players set $sepOneSecondTimer sep_one_second_timer 0