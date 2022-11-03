# Made by Aelve
# Called by function advancement_gaxe through /schedule
# Detects tag given to piglin upon first tick of piglin picking up the golden axe. Adds a new tag for detecting later.

execute as @e[type=piglin,tag=sep_has_gaxe] run tag @s add sep_brute_gaxe