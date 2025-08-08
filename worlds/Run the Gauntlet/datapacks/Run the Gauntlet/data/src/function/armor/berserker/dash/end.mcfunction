## At raycast end
tp @s ~ ~ ~

# fx
execute rotated ~ 90 run function src:generic/vfx/expanding_circle/play {"particle":"smoke","speed":"0.00000015"}
playsound entity.breeze.shoot neutral @a[distance=..10] ~ ~ ~ 0.5 0.8 0.5

# reset
tag @s remove berserker.dash.user