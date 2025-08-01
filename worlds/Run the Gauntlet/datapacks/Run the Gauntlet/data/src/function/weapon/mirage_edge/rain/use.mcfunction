## Uses heavy rain blades
tag @s add mirageedge.rain.user
function src:weapon/mirage_edge/rain/targeting/start

# fx
particle flash ^ ^1 ^1 0 0 0 0 1 force
playsound entity.experience_orb.pickup neutral @a[distance=..20] ~ ~ ~ 1 2 1

# reset
scoreboard players set @s weapon.cd 20
scoreboard players reset @s ability.uses