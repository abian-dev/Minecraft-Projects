## Uses spiral swords
tag @s add miracles.swords.spiral.user

# summon origin
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["miracles.swords.spiral.origin"],Duration:70}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=miracles.swords.spiral.origin] at @s run function src:weapon/miracles/swords/spiral/init_origin

# summon swords
execute rotated ~ 0 positioned ~ ~1 ~ positioned ^0 ^0 ^1.732 run function src:weapon/miracles/swords/spiral/summon
execute rotated ~ 0 positioned ~ ~1 ~ positioned ^-1.5 ^0 ^-0.866 run function src:weapon/miracles/swords/spiral/summon
execute rotated ~ 0 positioned ~ ~1 ~ positioned ^1.5 ^0 ^-0.866 run function src:weapon/miracles/swords/spiral/summon