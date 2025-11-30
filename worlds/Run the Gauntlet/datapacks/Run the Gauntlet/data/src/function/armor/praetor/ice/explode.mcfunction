## Ice bomb explosion
execute as @e[type=!#src:non_entity,distance=..5,tag=!praetor.ice.user,team=!ally] at @s run function src:armor/praetor/ice/hit

# fx
particle flash{color:[1.0,1.0,1.0,1.0]} ~ ~0.3 ~ 0 0 0 0 2 force
execute positioned ~ ~0.3 ~ run function src:generic/vfx/expanding_sphere/variant1/play {"accuracy":"300","speed":"100","limit":"5","particle":"dust{color:[0.0,1.0,1.0],scale:1.0}"}
playsound block.glass.break neutral @a[distance=..20] ~ ~ ~ 1 0 1
playsound entity.player.hurt_freeze neutral @a[distance=..20] ~ ~ ~ 2 0 1

# reset
tag @s add praetor.ice.curr
execute unless entity @e[type=area_effect_cloud,tag=!praetor.ice.curr,tag=praetor.ice] run tag @a[tag=praetor.ice.user] remove praetor.ice.user
kill @s