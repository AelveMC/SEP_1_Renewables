# Made by Aelve
# In 1.20.5 onwards, can no longer give give multiple non-stackable items. Work-around this by replacing the item once given.

advancement revoke @s only sep_disc_fragments:unstack_disc_mall

execute if function sep_disc_fragments:disc_mall/clear run function sep_disc_fragments:disc_mall/give_and_retry