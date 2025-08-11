## Uses blue
tag @s add limitless.blue.user
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["projectile","limitless.blue"],Duration:70}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=limitless.blue] at @s run function src:weapon/limitless/blue/lapse/init
playsound entity.guardian.attack neutral @a[distance=..20] ~ ~ ~ 2 1 1

# reset
scoreboard players set @s weapon.cd 20
scoreboard players remove @s cost.energy 30
scoreboard players reset @s in.sequence