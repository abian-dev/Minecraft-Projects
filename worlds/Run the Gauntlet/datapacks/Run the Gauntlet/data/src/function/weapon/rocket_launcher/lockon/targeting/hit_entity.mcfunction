# note: locked-on is an effect and automatically decreases
## When lock-on raycast hits entity
execute if entity @e[type=!#src:non_entity,distance=..2,limit=1,sort=nearest,scores={effect.lockedOn.duration=10..}] run return run function src:weapon/rocket_launcher/lockon/targeting/locked
execute as @e[type=!#src:non_entity,distance=..2,limit=1,sort=nearest,tag=!rocketlauncher.lockon.user,team=!ally] at @s run scoreboard players add @s effect.lockedOn.duration 4
execute positioned as @s run playsound entity.arrow.hit_player neutral @a[distance=..5] ~ ~ ~ 1.0 0.8 1.0

# reset
scoreboard players set @s generic.raycast.step 0
scoreboard players set @s weapon.cd2 5