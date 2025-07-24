## Meathook chain particles
particle dust{color:[0.5,0.5,0.5],scale:0.5} ~ ~1 ~ 0.0 0.0 0.0 0 1
particle dust{color:[1.0,0.5,0.0],scale:0.4} ~ ~1 ~ 0.1 0.1 0.1 0 1
execute facing entity @p[limit=1,sort=nearest,distance=2..,tag=supershotgun.meathook.user] feet positioned ^ ^ ^0.5 run function src:weapon/super_shotgun/meathook/chains