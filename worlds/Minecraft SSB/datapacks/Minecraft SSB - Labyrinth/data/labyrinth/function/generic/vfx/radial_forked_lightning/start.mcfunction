## Starts Radial Forked Lightning
$execute store result score %vfxRadialForkedLightning.numRoots labyrinth.generic.z run random value $(rootsMin)..$(rootsMax)
function labyrinth:generic/vfx/radial_forked_lightning/root with storage minecraft:labyrinth.vfx radialForkedLightning

kill @s