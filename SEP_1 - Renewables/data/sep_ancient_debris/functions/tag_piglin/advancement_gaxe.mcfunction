# Made by Aelve
# Called by advancement give_piglin_gaxe
# Scheduled function is requires as there is a delay between the advancement activating and the piglin actually picking up the item.

advancement revoke @s only sep_ancient_debris:give_piglin_gaxe
schedule function sep_ancient_debris:tag_piglin/piglin_holding_gaxe 1t append