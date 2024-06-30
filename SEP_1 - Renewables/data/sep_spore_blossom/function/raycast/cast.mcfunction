# Made by Aelve
# Called from function sep_spore_blossom:raycast/start
# Raycast until moss block is found, then generate spore blossoms.

execute unless block ~ ~ ~ minecraft:moss_block positioned ^ ^ ^0.05 run function sep_spore_blossom:raycast/cast
execute if block ~ ~ ~ minecraft:moss_block run function sep_spore_blossom:spread_blossom