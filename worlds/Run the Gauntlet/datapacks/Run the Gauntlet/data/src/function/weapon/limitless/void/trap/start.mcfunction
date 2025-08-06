## Traps in domain
scoreboard players set %limitless.void.trap generic.raycast.step 100
execute facing entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=limitless.void] feet rotated ~ 0 run function src:weapon/limitless/void/trap/step
scoreboard players reset %limitless.void.trap