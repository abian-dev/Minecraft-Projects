## Runs activated behavior
# vfx
tp @s ~ ~ ~ ~5 ~
execute rotated as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=miracles.soul.origin] positioned ~-0.125 ~ ~0.125 run function src:weapon/miracles/soul/vfx/runes
execute rotated ~ -90 run function src:weapon/miracles/soul/vfx/flames
execute rotated ~ 0 run function src:weapon/miracles/soul/vfx/circle

# collision
execute as @e[type=!#src:non_entity,distance=..11,tag=!miracles.soul.user,team=!ally] at @s unless block ~ ~-0.5 ~ #src:passable run function src:weapon/miracles/soul/hit