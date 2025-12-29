## Assigns Tasks to Specific Area Effect Clouds
# generic
execute if entity @s[tag=vfxDomain] run function labyrinth:generic/vfx/domain/main
execute if entity @s[tag=vfxExpandingCylinder] run function labyrinth:generic/vfx/expanding_cylinder/main
execute if entity @s[tag=vfxExpandingSphere] run function labyrinth:generic/vfx/expanding_sphere/variant1/main
execute if entity @s[tag=vfxRotatingVertical] run function labyrinth:generic/vfx/rotating_vertical/general/main
execute if entity @s[tag=vfxShine] run function labyrinth:generic/vfx/rotating_vertical/shine/main
execute if entity @s[tag=vfxSlashCircle] run function labyrinth:generic/vfx/slash_circle/main