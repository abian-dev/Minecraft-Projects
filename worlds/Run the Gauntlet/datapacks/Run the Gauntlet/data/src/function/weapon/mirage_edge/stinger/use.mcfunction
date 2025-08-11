## Uses stinger
tag @s add mirageedge.stinger.user
attribute @s gravity modifier add gravity.mirageedge.stinger -1 add_multiplied_total
function src:weapon/mirage_edge/stinger/range/start

# fx
execute rotated ~ 90 run function src:generic/vfx/expanding_circle/play {"particle":"smoke","speed":"0.00000015"}
playsound entity.ghast.shoot neutral @a[distance=..20] ~ ~ ~ 1 0 1

# reset
scoreboard players set @s weapon.cd 20
scoreboard players remove @s cost.stamina 20
scoreboard players reset @s ability.uses