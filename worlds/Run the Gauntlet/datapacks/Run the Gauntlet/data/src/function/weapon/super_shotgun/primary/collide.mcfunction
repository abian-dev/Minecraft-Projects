## When bullet collides
execute as @e[type=!#src:non_entity,distance=..2,limit=1,sort=nearest,tag=!supershotgun.pf.user,team=!ally] at @s run damage @s 0.5 src:bypass_player_attack by @p[tag=supershotgun.pf.user]
particle dust{color:[1.0,0.6,0.0],scale:1.0} ~ ~ ~ 0 0 0 0 1 force

# reset
tag @s add supershotgun.bullet.curr
execute unless entity @e[type=area_effect_cloud,tag=!supershotgun.bullet.curr,tag=supershotgun.bullet] run tag @a[tag=supershotgun.pf.user] remove supershotgun.pf.user
kill @s