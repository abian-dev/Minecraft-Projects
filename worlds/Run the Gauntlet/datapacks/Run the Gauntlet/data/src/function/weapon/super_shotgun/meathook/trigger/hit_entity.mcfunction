## When initial raycast hits entity
attribute @s gravity modifier add gravity.supershotgun.meathook -1 add_multiplied_total
execute positioned as @s run playsound block.chain.place neutral @a[distance=..20] ~ ~ ~ 2 0 1

# summon meathook
execute as @e[type=!#src:non_entity,distance=..2,limit=1,sort=nearest,tag=!supershotgun.meathook.user,team=!ally] at @s run function src:weapon/super_shotgun/meathook/trigger/at_entity
scoreboard players operation @e[type=area_effect_cloud,distance=..2,limit=1,sort=nearest,tag=supershotgun.meathook] user.id = @s user.id

# reset
scoreboard players set @s generic.raycast.step 0
scoreboard players set @s weapon.cd2 40