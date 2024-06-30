# Made by Aelve
# Called from advancement sep_small_dripleaf:use_bonemeal
# Begin raycasting when using bonemeal on clay in lush caves.

advancement revoke @s only sep_small_dripleaf:use_bonemeal
execute anchored eyes positioned ^ ^ ^ run function sep_small_dripleaf:raycast/cast

