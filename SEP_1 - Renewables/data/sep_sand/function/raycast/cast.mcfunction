# Made by Aelve
# Called from function sep_sand:raycast/start
# Raycasts until soul sand is detected, then runs block conversion.

execute unless block ~ ~ ~ minecraft:soul_sand positioned ^ ^ ^0.05 run function sep_sand:raycast/cast
execute if block ~ ~ ~ minecraft:soul_sand run function sep_sand:extract_soul