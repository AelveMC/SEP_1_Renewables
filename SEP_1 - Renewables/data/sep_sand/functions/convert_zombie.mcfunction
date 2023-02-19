# Made by Aelve
# Called from sep_sand:tick/detect_burning_husks
# The chosen zombie moves its properties over the to husk, before being deleted.

execute as @e[type=minecraft:zombie] at @s run playsound minecraft:item.axe.scrape hostile @a[distance=..32]
summon minecraft:husk ~ ~ ~

# Merge relevant properties.
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] Air set from entity @s Air
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] CustomName set from entity @s CustomName
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] CustomNameVisible set from entity @s CustomNameVisible
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] FallDistance set from entity @s FallDistance
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] Fire set from entity @s Fire
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] Glowing set from entity @s Glowing
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] HasVisualFire set from entity @s HasVisualFire
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] Invulnerable set from entity @s Invulnerable
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] Motion set from entity @s Motion
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] NoGravity set from entity @s NoGravity
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] OnGround set from entity @s OnGround
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] Passengers set from entity @s Passengers
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] PortalCooldown set from entity @s PortalCooldown
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] Rotation set from entity @s Rotation
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] Silent set from entity @s Silent
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] Tags set from entity @s Tags
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] TicksFrozen set from entity @s TicksFrozen
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] AbsorptionAmount set from entity @s AbsorptionAmount
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] ActiveEffects set from entity @s ActiveEffects
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] ArmorItems set from entity @s ArmorItems
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] CanPickUpLoot set from entity @s CanPickUpLoot
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] FallFlying set from entity @s FallFlying
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] HurtByTimestamp set from entity @s HurtByTimestamp
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] HurtTime set from entity @s HurtTime
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] HandItems set from entity @s HandItems
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] Leash set from entity @s Leash
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] LeftHanded set from entity @s LeftHanded
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] NoAI set from entity @s NoAI
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] PersistenceRequired set from entity @s PersistenceRequired
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] Team set from entity @s Team

data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] CanBreakDoors: set from entity @s CanBreakDoors:
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] DrownedConversionTime set from entity @s DrownedConversionTime
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] InWaterTime set from entity @s InWaterTime
data modify entity @e[type=husk,sort=nearest,limit=1,distance=..1] IsBaby set from entity @s IsBaby

# Remove zombie
tag @s remove sep_sunburnt
tp ~ ~-10000 ~