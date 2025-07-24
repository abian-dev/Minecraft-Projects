## When bullet collides
execute as @e[type=!#src:non_entity,distance=..4,tag=!ballista.pf.user,team=!ally] at @s run damage @s 8 src:bypass_player_attack by @p[tag=ballista.pf.user]
function src:generic/vfx/expanding_sphere/variant1/play {"accuracy":"200","speed":"50","limit":"5","particle":"dust{color:[1.0,0.5,0.0],scale:0.6}"}
particle flash ~ ~ ~ 0 0 0 0 1

# reset
tag @s add ballista.bullet.curr
execute unless entity @e[type=area_effect_cloud,tag=!ballista.bullet.curr,tag=ballista.bullet] run tag @a[tag=ballista.pf.user] remove ballista.pf.user
kill @s