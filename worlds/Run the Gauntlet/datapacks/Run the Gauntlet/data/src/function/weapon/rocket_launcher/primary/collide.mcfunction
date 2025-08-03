## When rocket collides
execute as @e[type=!#src:non_entity,distance=..6,tag=!rocketlauncher.pf.user,team=!ally] at @s run damage @s 8 src:bypass_player_attack by @p[tag=rocketlauncher.pf.user]
function src:generic/vfx/expanding_sphere/variant1/play {"accuracy":"100","speed":"50","limit":"10","particle":"dust{color:[1.0,0.6,0.0],scale:1.0}"}
particle flash ~ ~ ~ 0 0 0 0 1 force
playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 2 0 1

# reset
tag @s add rocketlauncher.rocket.curr
execute unless entity @e[type=area_effect_cloud,tag=!rocketlauncher.rocket.curr,tag=rocketlauncher.rocket] run tag @a[tag=rocketlauncher.pf.user] remove rocketlauncher.pf.user
kill @s