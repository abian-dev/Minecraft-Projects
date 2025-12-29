## Finds Random Direction for New Branch
execute if score %vfxRadialForkedLightning.numBranches labyrinth.generic.z matches 1 if score %vfxRadialForkedLightning.numRoots labyrinth.generic.z matches 1.. run function labyrinth:generic/vfx/radial_forked_lightning/root with storage minecraft:labyrinth.vfx radialForkedLightning
scoreboard players remove %vfxRadialForkedLightning.numBranches labyrinth.generic.z 1
execute store result entity @s Rotation[0] float 1 run random value -180..180
execute store result entity @s Rotation[1] float 1 run random value -90..90
execute rotated as @s run function labyrinth:generic/vfx/radial_forked_lightning/new with storage minecraft:labyrinth.vfx radialForkedLightning