# Made by Aelve
# Called by function sep_dragon_egg:start
# Raycast downwards and spawn a dragon egg if one should exist.

execute positioned ~ ~-1 ~ run execute if block ~ ~-1 ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:dragon_egg
execute positioned ~ ~-1 ~ run execute unless block ~ ~-1 ~ minecraft:bedrock run function sep_dragon_egg:cast_downwards

