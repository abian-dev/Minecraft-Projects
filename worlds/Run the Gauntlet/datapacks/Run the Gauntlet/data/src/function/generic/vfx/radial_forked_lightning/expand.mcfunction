## Expands Lightning Branch
$particle $(particle) ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove %vfxRadialForkedLightning.lengthBranch generic.z 1
$execute if score %vfxRadialForkedLightning.lengthBranch generic.z matches 1 if score %vfxRadialForkedLightning.numBranches generic.z matches 1.. positioned ^ ^ ^$(inaccuracy) run function src:generic/vfx/radial_forked_lightning/branch
$execute if score %vfxRadialForkedLightning.lengthBranch generic.z matches 1.. positioned ^ ^ ^$(inaccuracy) run function src:generic/vfx/radial_forked_lightning/expand with storage minecraft:vfx radialForkedLightning