## When red collides
execute as @e[type=!#src:non_entity,distance=..6,tag=!limitless.red.user,team=!ally] at @s run function src:weapon/limitless/red/reversal/hit

# fx
function src:generic/vfx/expanding_sphere/variant1/play {"accuracy":"300","speed":"150","limit":"5","particle":"dust{color:[1.0,0.0,0.0],scale:1.0}"}
particle flash ~ ~ ~ 0 0 0 0 1 force
playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 2 0 1

# reset
tag @s add limitless.red.curr
execute unless entity @e[type=area_effect_cloud,tag=!limitless.red.curr,tag=limitless.red] run tag @a[tag=limitless.red.user] remove limitless.red.user
kill @s