## Runs blue stationary behavior
tp @s ~ ~ ~ ~15 ~
execute rotated as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=limitless.blue.origin] run tp @s ^ ^ ^0.1
execute rotated ~ 0 run function src:weapon/limitless/blue/lapse/vfx_vortex