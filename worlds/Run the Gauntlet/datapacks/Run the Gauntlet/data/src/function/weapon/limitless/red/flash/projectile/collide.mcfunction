## When red flash collides with entity
execute as @e[type=!#src:non_entity,distance=..2,tag=!limitless.red.user,team=!ally] at @s run function src:weapon/limitless/red/flash/projectile/hit

# fx
particle flash{color:[1.0,0.0,0.0,1.0]} ~ ~ ~ 0 0 0 0 1 force
playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 1 0 1