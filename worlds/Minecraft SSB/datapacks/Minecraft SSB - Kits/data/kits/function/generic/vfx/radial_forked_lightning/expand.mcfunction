## Expands Lightning Branch
$particle $(particle) ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove %vfxRadialForkedLightning.lengthBranch kits.generic.z 1
$execute if score %vfxRadialForkedLightning.lengthBranch kits.generic.z matches 1 if score %vfxRadialForkedLightning.numBranches kits.generic.z matches 1.. positioned ^ ^ ^$(inaccuracy) run function kits:generic/vfx/radial_forked_lightning/branch
$execute if score %vfxRadialForkedLightning.lengthBranch kits.generic.z matches 1.. positioned ^ ^ ^$(inaccuracy) run function kits:generic/vfx/radial_forked_lightning/expand with storage minecraft:kits.vfx radialForkedLightning