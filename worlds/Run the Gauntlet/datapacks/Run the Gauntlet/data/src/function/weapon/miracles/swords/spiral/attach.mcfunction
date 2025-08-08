## Attach swords to user
execute if score @s generic.constant matches 1 rotated ~ 0 positioned ^0 ^0 ^1.732 run tp @s ~ ~1 ~
execute if score @s generic.constant matches 2 rotated ~ 0 positioned ^-1.5 ^0 ^-0.866 run tp @s ~ ~1 ~
execute if score @s generic.constant matches 3 rotated ~ 0 positioned ^1.5 ^0 ^-0.866 run tp @s ~ ~1 ~
execute at @s facing entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=miracles.swords.spiral.origin] feet rotated ~180 0 run tp @s ~ ~ ~ ~ ~