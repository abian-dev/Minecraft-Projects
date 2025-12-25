## Uses red
tag @s add limitless.red.user
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["projectile","limitless.red"],Duration:40}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=limitless.red] at @s run function src:weapon/limitless/red/reversal/init
playsound entity.guardian.attack neutral @a[distance=..20] ~ ~ ~ 2 2 1

# reset
scoreboard players set @s weapon.cd 20
scoreboard players remove @s cost.energy 20
scoreboard players reset @s in.sequence