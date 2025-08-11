# note: executed as ammo supply
## Ammo pickup effects
playsound entity.experience_orb.pickup neutral @a[distance=..5] ~ ~ ~ 1 2 1
execute if score @s generic.constant matches 1 run return run execute as @p run function src:supply/ammo/pickup/bullet
execute if score @s generic.constant matches 2 run return run execute as @p run function src:supply/ammo/pickup/energy
execute if score @s generic.constant matches 3 run return run execute as @p run function src:supply/ammo/pickup/rocket
execute if score @s generic.constant matches 4 run return run execute as @p run function src:supply/ammo/pickup/shell