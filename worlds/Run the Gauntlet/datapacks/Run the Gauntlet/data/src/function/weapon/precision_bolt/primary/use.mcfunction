## When primary fire is used
tag @s add precisionbolt.pf.user
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["projectile","precisionbolt.bullet"],Duration:20}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=precisionbolt.bullet] at @s run function src:weapon/precision_bolt/primary/init
scoreboard players set @s weapon.cd 21

# fx
playsound entity.guardian.attack neutral @a[distance=..20] ~ ~ ~ 2 2 1
playsound entity.zombie_villager.cure neutral @a[distance=..20] ~ ~ ~ 0.5 2 0.5
tp @s ~ ~ ~ ~ ~-1