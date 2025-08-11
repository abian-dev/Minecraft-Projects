## Uses grab
tag @s add limitless.grab.user
attribute @s gravity modifier add gravity.limitless.grab -1 add_multiplied_total
function src:weapon/limitless/grab/range/start

# fx
execute rotated ~ 90 run function src:generic/vfx/expanding_circle/play {"particle":"smoke","speed":"0.00000015"}
playsound entity.ghast.shoot neutral @a[distance=..20] ~ ~ ~ 1 0 1

# reset
scoreboard players set @s weapon.cd 20
scoreboard players remove @s cost.energy 25
scoreboard players reset @s in.sequence