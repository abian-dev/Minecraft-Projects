## Finds Random Direction for New Branch
execute if score %vfxRadialForkedLightning.numBranches generic.z matches 1 if score %vfxRadialForkedLightning.numRoots generic.z matches 1.. run function src:generic/vfx/radial_forked_lightning/root with storage minecraft:vfx radialForkedLightning
scoreboard players remove %vfxRadialForkedLightning.numBranches generic.z 1
execute store result entity @s Rotation[0] float 1 run random value -180..180
execute store result entity @s Rotation[1] float 1 run random value -90..90
execute rotated as @s run function src:generic/vfx/radial_forked_lightning/new with storage minecraft:vfx radialForkedLightning