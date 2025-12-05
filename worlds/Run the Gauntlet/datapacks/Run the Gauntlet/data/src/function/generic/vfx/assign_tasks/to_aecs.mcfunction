## Assigns Tasks to Specific Area Effect Clouds
# generic
execute if entity @s[tag=vfxDomain] run function src:generic/vfx/domain/main
execute if entity @s[tag=vfxExpandingCylinder] run function src:generic/vfx/expanding_cylinder/main
execute if entity @s[tag=vfxExpandingSphere] run function src:generic/vfx/expanding_sphere/variant1/main
execute if entity @s[tag=vfxRotatingVertical] run function src:generic/vfx/rotating_vertical/general/main
execute if entity @s[tag=vfxShine] run function src:generic/vfx/rotating_vertical/shine/main
execute if entity @s[tag=vfxSlashCircle] run function src:generic/vfx/slash_circle/main