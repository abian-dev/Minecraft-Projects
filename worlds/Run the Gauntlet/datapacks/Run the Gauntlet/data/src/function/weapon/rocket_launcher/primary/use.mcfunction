## When primary fire is used
tag @s add rocketlauncher.pf.user
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["projectile","rocketlauncher.rocket"],Duration:20}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=rocketlauncher.rocket] at @s run function src:weapon/rocket_launcher/primary/init
scoreboard players set @s weapon.cd 25
scoreboard players remove @s cost.ammo.rocket 1

# fx
playsound entity.ghast.shoot neutral @a[distance=..20] ~ ~ ~ 1 1 1
tp @s ~ ~ ~ ~ ~-1