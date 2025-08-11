## When primary fire is used
tag @s add supershotgun.pf.user
function src:weapon/super_shotgun/primary/summon
scoreboard players set @s weapon.cd 21
scoreboard players remove @s cost.ammo.shell 2

# fx
playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 1 0 1
tp @s ~ ~ ~ ~ ~-2