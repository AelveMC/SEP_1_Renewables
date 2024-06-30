# Made by Aelve
# Called from sep_echo_shard:detect_warden
# Detects newly spawned wardens climbing out of the ground and generates a shard.

execute unless entity @s[tag=sep_dropped_shard] run execute at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:echo_shard",Count:1b}}
execute unless entity @s[tag=sep_dropped_shard] run tag @s add sep_dropped_shard