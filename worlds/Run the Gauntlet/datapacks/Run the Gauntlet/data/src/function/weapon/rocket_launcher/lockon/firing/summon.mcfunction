## Summons homing rocket
# summon
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["projectile","rocketlauncher.rockethoming"],Duration:20}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=rocketlauncher.rockethoming] at @s run function src:weapon/rocket_launcher/lockon/firing/init

# fx
playsound entity.ghast.shoot neutral @a[distance=..20] ~ ~ ~ 1 1 1