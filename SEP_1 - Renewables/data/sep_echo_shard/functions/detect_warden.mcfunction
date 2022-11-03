# Made by Aelve
# Called from minecraft:tick
# Only runs function on warden climbing out of the ground.
 
execute as @e[type=warden, nbt={Brain: {memories: {"minecraft:is_emerging": {}}}}] run function sep_echo_shard:tag_warden
