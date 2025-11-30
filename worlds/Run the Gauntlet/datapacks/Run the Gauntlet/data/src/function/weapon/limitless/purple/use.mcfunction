## Uses hollow purple
tag @s add limitless.purple.user
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["limitless.purple"],Duration:100}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=limitless.purple] at @s run function src:weapon/limitless/purple/init
scoreboard players set @s effect.stun.duration 4

# fx
particle flash{color:[1.0,1.0,1.0,1.0]} ^ ^1 ^1 0 0 0 0 1 force
playsound block.beacon.deactivate neutral @a[distance=..20] ~ ~ ~ 1 1 1

# reset
scoreboard players set @s weapon.cd 100
scoreboard players remove @s cost.energy 40
scoreboard players reset @s in.sequence