# Made by Aelve
# Called by advancement sep_dead_bush:detect_lightning
# Replaces small plants around a lightning strike with dead bush.

advancement revoke @s only sep_dead_bush:detect_lightning
execute as @e[type=minecraft:lightning_bolt] at @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 minecraft:dead_bush replace #sep_dead_bush:bush_replaceables

