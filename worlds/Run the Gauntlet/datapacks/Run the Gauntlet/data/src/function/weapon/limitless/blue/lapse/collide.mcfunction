## When blue whilst moving collides with entity
# attract
scoreboard players set %limitless.blue.attract generic.raycast.step 5
execute rotated as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=limitless.blue] run function src:weapon/limitless/blue/attract/step
scoreboard players reset %limitless.blue.attract

# fx
particle flash{color:[0.0,0.5,1.0,1.0]} ~ ~ ~ 0 0 0 0 1 force
playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 1 1 1