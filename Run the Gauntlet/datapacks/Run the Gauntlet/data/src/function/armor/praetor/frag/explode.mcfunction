## Frag explosion
execute as @e[type=!#src:non_entity,distance=..5,tag=!praetor.frag.user,team=!ally] at @s run function src:armor/praetor/frag/hit

# fx
particle flash ~ ~0.3 ~ 0 0 0 0 2 force
execute positioned ~ ~0.3 ~ run function src:generic/vfx/expanding_sphere/variant1/play {"accuracy":"300","speed":"100","limit":"5","particle":"dust{color:[1.0,0.5,0.0],scale:1.0}"}
playsound entity.firework_rocket.twinkle neutral @a[distance=..20] ~ ~ ~ 2 0 1
playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 2 0 1

# reset
tag @s add praetor.frag.curr
execute unless entity @e[type=area_effect_cloud,tag=!praetor.frag.curr,tag=praetor.frag] run tag @a[tag=praetor.frag.user] remove praetor.frag.user
kill @s