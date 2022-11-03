# Made by Aelve
# Called from advancement sep_heart_of_the_sea:lightning_guardian
# Detects lightning bolt using advancement and then detect nearby guardians.

advancement revoke @s only sep_heart_of_the_sea:lightning_guardian
execute as @e[type=minecraft:lightning_bolt] at @s run execute as @e[type=minecraft:guardian,distance=..5] at @s run function sep_heart_of_the_sea:convert_guardian
