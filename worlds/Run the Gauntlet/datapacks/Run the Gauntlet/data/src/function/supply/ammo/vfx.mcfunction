## Ammo vfx based on type
execute if score @s generic.constant matches 1 run return run particle dust{color:[1.0,0.0,0.0],scale:1.0} ~ ~ ~ 0 0 0 0 1 force
execute if score @s generic.constant matches 2 run return run particle dust{color:[1.0,0.0,1.0],scale:1.0} ~ ~ ~ 0 0 0 0 1 force
execute if score @s generic.constant matches 3 run return run particle dust{color:[1.0,0.5,0.0],scale:1.0} ~ ~ ~ 0 0 0 0 1 force
execute if score @s generic.constant matches 4 run return run particle dust{color:[1.0,1.0,0.0],scale:1.0} ~ ~ ~ 0 0 0 0 1 force