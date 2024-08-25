# Made by Aelve
# Called by advancement sep_lilypad:use_bonemeal
# Begin raycasting if in a swamp-type biome.

advancement revoke @s only sep_lilypad:use_bonemeal
execute anchored eyes positioned ^ ^ ^ run function sep_lilypad:raycast/cast

