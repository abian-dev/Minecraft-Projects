## Meathook chain particles
particle dust{color:[0.5,0.5,0.5],scale:0.5} ~ ~1 ~ 0.0 0.0 0.0 0 1 force
particle dust{color:[1.0,0.5,0.0],scale:0.4} ~ ~1 ~ 0.1 0.1 0.1 0 1 force

# recursive call
scoreboard players operation %supershotgun.meathook.search user.id = @s user.id
execute as @a[tag=supershotgun.meathook.user] if score @s user.id = %supershotgun.meathook.search user.id run tag @s add supershotgun.meathook.chainsCurr
execute facing entity @p[distance=2..,tag=supershotgun.meathook.chainsCurr] feet positioned ^ ^ ^0.5 run function src:weapon/super_shotgun/meathook/chains
scoreboard players reset %supershotgun.meathook.search
tag @a[tag=supershotgun.meathook.chainsCurr] remove supershotgun.meathook.chainsCurr