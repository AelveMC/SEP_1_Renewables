# Made by Aelve
# Called from function sep_spore_blossom:raycast/cast
# Generate spore blossom if one already exists next to bonemealed block.

execute if block ~ ~-1 ~ minecraft:air if block ~ ~-1 ~1 minecraft:spore_blossom run setblock ~ ~-1 ~ minecraft:spore_blossom
execute if block ~ ~-1 ~ minecraft:air if block ~ ~-1 ~-1 minecraft:spore_blossom run setblock ~ ~-1 ~ minecraft:spore_blossom
execute if block ~ ~-1 ~ minecraft:air if block ~1 ~-1 ~ minecraft:spore_blossom run setblock ~ ~-1 ~ minecraft:spore_blossom
execute if block ~ ~-1 ~ minecraft:air if block ~-1 ~-1 ~ minecraft:spore_blossom run setblock ~ ~-1 ~ minecraft:spore_blossom