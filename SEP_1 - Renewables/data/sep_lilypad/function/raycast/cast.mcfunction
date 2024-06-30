# Made by Aelve
# Called by function sep_lilypad:raycast/start
# Raycasting until grass_block is found, then generate lilypads.

execute unless block ~ ~ ~ minecraft:grass_block positioned ^ ^ ^0.05 run function sep_lilypad:raycast/cast
execute if block ~ ~ ~ minecraft:grass_block run function sep_lilypad:grow_lilypad