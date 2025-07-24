## Starts Radial Forked Lightning
$execute store result score %vfxRadialForkedLightning.numRoots generic.z run random value $(rootsMin)..$(rootsMax)
function src:generic/vfx/radial_forked_lightning/root with storage minecraft:vfx radialForkedLightning

kill @s