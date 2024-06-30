# Made by Aelve
# Called by advancement sep_dragon_egg:killed_dragon
# If none of the end gateways exist, search downwards for the end portal.

advancement revoke @s only sep_dragon_egg:killed_dragon

scoreboard objectives add sep_summon_new_dragon_egg dummy
scoreboard players set $dragon_egg_dummy sep_summon_new_dragon_egg 0

# Check if end gateways exist - this will mean the dragon has been killed once already.
execute if block 96 75 0 minecraft:end_gateway run scoreboard players set $dragon_egg_dummy sep_summon_new_dragon_egg 1
execute if block 91 75 29 minecraft:end_gateway run scoreboard players set $dragon_egg_dummy sep_summon_new_dragon_egg 1
execute if block 77 75 56 minecraft:end_gateway run scoreboard players set $dragon_egg_dummy sep_summon_new_dragon_egg 1
execute if block 56 75 77 minecraft:end_gateway run scoreboard players set $dragon_egg_dummy sep_summon_new_dragon_egg 1
execute if block 29 75 91 minecraft:end_gateway run scoreboard players set $dragon_egg_dummy sep_summon_new_dragon_egg 1
execute if block -1 75 96 minecraft:end_gateway run scoreboard players set $dragon_egg_dummy sep_summon_new_dragon_egg 1
execute if block -30 75 91 minecraft:end_gateway run scoreboard players set $dragon_egg_dummy sep_summon_new_dragon_egg 1
execute if block -57 75 77 minecraft:end_gateway run scoreboard players set $dragon_egg_dummy sep_summon_new_dragon_egg 1
execute if block -78 75 56 minecraft:end_gateway run scoreboard players set $dragon_egg_dummy sep_summon_new_dragon_egg 1
execute if block -92 75 29 minecraft:end_gateway run scoreboard players set $dragon_egg_dummy sep_summon_new_dragon_egg 1
execute if block -96 75 -1 minecraft:end_gateway run scoreboard players set $dragon_egg_dummy sep_summon_new_dragon_egg 1
execute if block -92 75 -30 minecraft:end_gateway run scoreboard players set $dragon_egg_dummy sep_summon_new_dragon_egg 1
execute if block -78 75 -57 minecraft:end_gateway run scoreboard players set $dragon_egg_dummy sep_summon_new_dragon_egg 1
execute if block -57 75 -78 minecraft:end_gateway run scoreboard players set $dragon_egg_dummy sep_summon_new_dragon_egg 1
execute if block -30 75 -92 minecraft:end_gateway run scoreboard players set $dragon_egg_dummy sep_summon_new_dragon_egg 1
execute if block 0 75 -96 minecraft:end_gateway run scoreboard players set $dragon_egg_dummy sep_summon_new_dragon_egg 1
execute if block 29 75 -92 minecraft:end_gateway run scoreboard players set $dragon_egg_dummy sep_summon_new_dragon_egg 1
execute if block 56 75 -78 minecraft:end_gateway run scoreboard players set $dragon_egg_dummy sep_summon_new_dragon_egg 1
execute if block 77 75 -57 minecraft:end_gateway run scoreboard players set $dragon_egg_dummy sep_summon_new_dragon_egg 1
execute if block 91 75 -30 minecraft:end_gateway run scoreboard players set $dragon_egg_dummy sep_summon_new_dragon_egg 1

execute if score $dragon_egg_dummy sep_summon_new_dragon_egg matches 1 run execute positioned 0 250 0 run function sep_dragon_egg:cast_downwards

