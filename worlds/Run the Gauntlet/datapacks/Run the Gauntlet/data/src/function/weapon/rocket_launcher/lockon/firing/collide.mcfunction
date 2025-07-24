## When rocket collides
execute as @e[type=!#src:non_entity,distance=..6,tag=!rocketlauncher.lockon.user,team=!ally] at @s run damage @s 8 src:bypass_player_attack by @p[tag=rocketlauncher.lockon.user]
particle flash ~ ~ ~ 0 0 0 0 1
playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 2 0 1

# reset
tag @s add rocketlauncher.rockethoming.curr
execute unless entity @e[type=area_effect_cloud,tag=!rocketlauncher.rockethoming.curr,tag=rocketlauncher.burst] run tag @a[tag=rocketlauncher.lockon.user] remove rocketlauncher.lockon.user
kill @s