## Creates Lightning Root
scoreboard players remove %vfxRadialForkedLightning.numRoots generic.z 1
$execute store result score %vfxRadialForkedLightning.numBranches generic.z run random value $(branchesMin)..$(branchesMax)
execute positioned as @s run function src:generic/vfx/radial_forked_lightning/branch