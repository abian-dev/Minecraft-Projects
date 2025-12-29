## Creates Lightning Root
scoreboard players remove %vfxRadialForkedLightning.numRoots kits.generic.z 1
$execute store result score %vfxRadialForkedLightning.numBranches kits.generic.z run random value $(branchesMin)..$(branchesMax)
execute positioned as @s run function kits:generic/vfx/radial_forked_lightning/branch