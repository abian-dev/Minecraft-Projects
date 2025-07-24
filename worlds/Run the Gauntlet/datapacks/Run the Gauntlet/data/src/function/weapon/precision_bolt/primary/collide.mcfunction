## When bullet collides
execute if score @s generic.raycast.step matches -1 as @e[type=!#src:non_entity,distance=..2,tag=!precisionbolt.pf.user,team=!ally] at @s run function src:weapon/precision_bolt/primary/hit/body
particle dust{color:[0.0,0.6,1.0],scale:1.5} ~ ~ ~ 0 0 0 0 1 force

# reset
tag @s add precisionbolt.bullet.curr
execute unless entity @e[type=area_effect_cloud,tag=!precisionbolt.bullet.curr,tag=precisionbolt.bullet] run tag @a[tag=precisionbolt.pf.user] remove precisionbolt.pf.user
kill @s