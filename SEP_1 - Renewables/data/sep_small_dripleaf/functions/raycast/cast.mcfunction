# Made by Aelve
# Called from function sep_small_dripleaf:raycast/start
# Raycast until clay block is reached, then place small dripleaves.

execute unless block ~ ~ ~ minecraft:clay positioned ^ ^ ^0.05 run function sep_small_dripleaf:raycast/cast
execute if block ~ ~ ~ minecraft:clay run function sep_small_dripleaf:place_structure