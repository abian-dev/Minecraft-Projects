## When primary fire is used
tag @s add ballista.pf.user
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["projectile","ballista.bullet"],Duration:20}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=ballista.bullet] at @s run function src:weapon/ballista/primary/init
scoreboard players set @s weapon.cd 25

# fx
playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 0.5 0 0.5
playsound entity.illusioner.prepare_blindness neutral @a[distance=..20] ~ ~ ~ 2 1 1
tp @s ~ ~ ~ ~ ~-1