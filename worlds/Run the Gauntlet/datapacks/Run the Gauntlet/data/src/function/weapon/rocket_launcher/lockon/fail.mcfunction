## When user fails to fully lock-on
execute positioned ^ ^1.5 ^0.5 run function src:generic/vfx/expanding_circle/play {"particle":"smoke","speed":"0.00000005"}
playsound block.fire.extinguish neutral @a[distance=..5] ~ ~ ~ 0.5 1.0 0.5
tag @s remove rocketlauncher.lockon.user