## Hit entity function
# detect humanoid
execute if entity @s[type=#src:humanoid] run function src:weapon/precision_bolt/primary/hit/humanoid
execute unless entity @s[type=#src:humanoid] run function src:weapon/precision_bolt/primary/hit/body

# stop bullet
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=precisionbolt.bullet] at @s run function src:weapon/precision_bolt/primary/collide