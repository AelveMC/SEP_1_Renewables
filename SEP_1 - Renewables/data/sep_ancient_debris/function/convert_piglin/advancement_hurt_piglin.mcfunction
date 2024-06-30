# Made by Aelve
# Called by advancement hurt_piglin
# Detects a hurt adult piglin and runs conversion function on it.

advancement revoke @s only sep_ancient_debris:hurt_piglin
execute as @e[type=piglin,limit=1,distance=..8,nbt={HurtTime:10s}] at @s run execute unless entity @s[nbt={IsBaby: 1b}] run function sep_ancient_debris:convert_piglin/piglin_to_brute
