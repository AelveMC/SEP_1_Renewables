# Made by Aelve
# Called from sep_sand:raycast/cast
# Small slimes only drop 1xp consistently. Kills slime when block is placed to activate sculk catalyst.

execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:slime ~ ~ ~ {Size:0,DeathLootTable:"minecraft:empty",Tags:["sep_sand_slime"],Silent:1b,NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:999999,show_particles:0b}]}
kill @e[type=minecraft:slime,tag=sep_sand_slime]

setblock ~ ~ ~ sand