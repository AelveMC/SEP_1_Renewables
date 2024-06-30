# Made by Aelve
# Called by function advancement_gapple through /schedule
# Detects tag given to piglin upon first tick of piglin picking up the golden apple. Adds a new tag for detecting later.

execute as @e[type=piglin,tag=sep_has_gapple] run tag @s add sep_brute_gapple