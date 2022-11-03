# Made by Aelve
# Called from function sep_small_dripleaf:place_structure
# Generate small dripleaves in a top-down approach.

# Dripleaf 'upper' checks. Spawnable conditions differ depending on whether block is under water or air.
execute if block ~ ~ ~ #sep_small_dripleaf:spawnable_water if block ~ ~1 ~ #sep_small_dripleaf:replace_water if block ~ ~2 ~ #sep_small_dripleaf:replace_water run function sep_small_dripleaf:setblock/upper_water
execute if block ~ ~ ~ #sep_small_dripleaf:spawnable_water if block ~ ~1 ~ #sep_small_dripleaf:replace_water if block ~ ~2 ~ #sep_small_dripleaf:replace_air run function sep_small_dripleaf:setblock/upper_air
execute if block ~ ~ ~ #sep_small_dripleaf:spawnable_air if block ~ ~1 ~ #sep_small_dripleaf:replace_air if block ~ ~2 ~ #sep_small_dripleaf:replace_water run function sep_small_dripleaf:setblock/upper_water
execute if block ~ ~ ~ #sep_small_dripleaf:spawnable_air if block ~ ~1 ~ #sep_small_dripleaf:replace_air if block ~ ~2 ~ #sep_small_dripleaf:replace_air run function sep_small_dripleaf:setblock/upper_air

# Dripleaf 'lower' checks. Relies on 'upper' checks passing to spawn.
execute if block ~ ~1 ~ #sep_small_dripleaf:replace_water if block ~ ~2 ~ small_dripleaf run function sep_small_dripleaf:setblock/lower_water
execute if block ~ ~1 ~ #sep_small_dripleaf:replace_air if block ~ ~2 ~ small_dripleaf run function sep_small_dripleaf:setblock/lower_air



