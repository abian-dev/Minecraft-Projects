## Uses blistering blades
tag @s add mirageedge.blistering.user
execute rotated ~ 0 positioned ^-1.0 ^2.5 ^ run function src:weapon/mirage_edge/blistering/summon
execute rotated ~ 0 positioned ^1.0 ^2.5 ^ run function src:weapon/mirage_edge/blistering/summon
execute rotated ~ 0 positioned ^-1.0 ^2.0 ^ run function src:weapon/mirage_edge/blistering/summon
execute rotated ~ 0 positioned ^1.0 ^2.0 ^ run function src:weapon/mirage_edge/blistering/summon
execute rotated ~ 0 positioned ^-1.0 ^1.5 ^ run function src:weapon/mirage_edge/blistering/summon
execute rotated ~ 0 positioned ^1.0 ^1.5 ^ run function src:weapon/mirage_edge/blistering/summon

# fx
particle flash ^ ^1 ^1 0 0 0 0 1 force
playsound entity.experience_orb.pickup neutral @a[distance=..20] ~ ~ ~ 1 2 1

# reset
scoreboard players set @s weapon.cd2 40
scoreboard players reset @s ability.uses