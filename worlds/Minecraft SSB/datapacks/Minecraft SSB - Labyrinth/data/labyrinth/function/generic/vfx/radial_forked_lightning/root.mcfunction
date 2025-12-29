## Creates Lightning Root
scoreboard players remove %vfxRadialForkedLightning.numRoots labyrinth.generic.z 1
$execute store result score %vfxRadialForkedLightning.numBranches labyrinth.generic.z run random value $(branchesMin)..$(branchesMax)
execute positioned as @s run function labyrinth:generic/vfx/radial_forked_lightning/branch