## When destroyer blade is used
tag @s add ballista.destroyer.user
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["projectile","ballista.destroyer"],Duration:20}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=ballista.destroyer] at @s run function src:weapon/ballista/destroyer/init
scoreboard players set @s weapon.cd 25

# fx
playsound block.end_portal.spawn neutral @a[distance=..20] ~ ~ ~ 1 2 1
playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 2 0 1
playsound entity.illusioner.prepare_blindness neutral @a[distance=..20] ~ ~ ~ 2 1 1
tp @s ~ ~ ~ ~ ~-1