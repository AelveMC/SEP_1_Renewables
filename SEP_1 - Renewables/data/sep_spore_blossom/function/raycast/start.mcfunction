# Made by Aelve
# Called from advancement sep_spore_blossom:use_bonemeal
# Begin raycasting when bonemeal is used on moss block.

advancement revoke @s only sep_spore_blossom:use_bonemeal
execute anchored eyes positioned ^ ^ ^ run function sep_spore_blossom:raycast/cast

