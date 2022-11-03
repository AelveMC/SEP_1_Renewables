# Made by Aelve
# Called from advancement sep_sand:use_soul_sand
# Begin raycasting when soul sand is used on catalyst.

advancement revoke @s only sep_sand:use_soul_sand
execute anchored eyes positioned ^ ^ ^ run function sep_sand:raycast/cast

