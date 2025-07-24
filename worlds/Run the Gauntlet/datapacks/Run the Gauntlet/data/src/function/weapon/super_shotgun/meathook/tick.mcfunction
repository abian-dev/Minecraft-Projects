## Executed at meathook every tick
# vfx
function src:weapon/super_shotgun/meathook/chains

# automatic despawn duration
execute unless score @s generic.math matches 20.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 20.. run function src:weapon/super_shotgun/meathook/end

# pulls user to itself
tag @s add supershotgun.meathook.curr
execute as @a[tag=supershotgun.meathook.user] at @s if score @s user.id = @e[type=area_effect_cloud,limit=1,sort=nearest,tag=supershotgun.meathook.curr] user.id run execute facing entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=supershotgun.meathook.curr] feet run function src:weapon/super_shotgun/meathook/pull
execute if entity @p[distance=..3,tag=supershotgun.meathook.user] run function src:weapon/super_shotgun/meathook/end
tag @s remove supershotgun.meathook.curr