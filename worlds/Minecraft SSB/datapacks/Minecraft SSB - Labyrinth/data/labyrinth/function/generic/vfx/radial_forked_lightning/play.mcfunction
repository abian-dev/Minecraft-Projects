# example call: function labyrinth:generic/vfx/radial_forked_lightning/play {"inaccuracy":"100","rootsMin":"3","rootsMax":"5","branchesMin":"3","branchesMax":"5","branchLengthMin":"5","branchLengthMax":"10","particle":"flame"}
## Plays Forked Lightning
# dynamic constants
$scoreboard players set %vfxRadialForkedLightning.inaccuracy labyrinth.generic.constant $(inaccuracy)
$scoreboard players set %vfxRadialForkedLightning.rootsMin labyrinth.generic.constant $(rootsMin)
$scoreboard players set %vfxRadialForkedLightning.rootsMax labyrinth.generic.constant $(rootsMax)
$scoreboard players set %vfxRadialForkedLightning.branchesMin labyrinth.generic.constant $(branchesMin)
$scoreboard players set %vfxRadialForkedLightning.branchesMax labyrinth.generic.constant $(branchesMax)
$scoreboard players set %vfxRadialForkedLightning.branchLengthMin labyrinth.generic.constant $(branchLengthMin)
$scoreboard players set %vfxRadialForkedLightning.branchLengthMax labyrinth.generic.constant $(branchLengthMax)

# store dynamic constants
execute store result storage minecraft:labyrinth.vfx radialForkedLightning.inaccuracy float 0.01 run scoreboard players get %vfxRadialForkedLightning.inaccuracy labyrinth.generic.constant
execute store result storage minecraft:labyrinth.vfx radialForkedLightning.rootsMin int 1 run scoreboard players get %vfxRadialForkedLightning.rootsMin labyrinth.generic.constant
execute store result storage minecraft:labyrinth.vfx radialForkedLightning.rootsMax int 1 run scoreboard players get %vfxRadialForkedLightning.rootsMax labyrinth.generic.constant
execute store result storage minecraft:labyrinth.vfx radialForkedLightning.branchesMin int 1 run scoreboard players get %vfxRadialForkedLightning.branchesMin labyrinth.generic.constant
execute store result storage minecraft:labyrinth.vfx radialForkedLightning.branchesMax int 1 run scoreboard players get %vfxRadialForkedLightning.branchesMax labyrinth.generic.constant
execute store result storage minecraft:labyrinth.vfx radialForkedLightning.branchLengthMin int 1 run scoreboard players get %vfxRadialForkedLightning.branchLengthMin labyrinth.generic.constant
execute store result storage minecraft:labyrinth.vfx radialForkedLightning.branchLengthMax int 1 run scoreboard players get %vfxRadialForkedLightning.branchLengthMax labyrinth.generic.constant
$data modify storage minecraft:labyrinth.vfx radialForkedLightning.particle set value "$(particle)"

# summon
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["labyrinth.vfx","vfxRadialForkedLightning"],Duration:0}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxRadialForkedLightning] at @s run function labyrinth:generic/vfx/radial_forked_lightning/start with storage minecraft:labyrinth.vfx radialForkedLightning
function labyrinth:generic/vfx/radial_forked_lightning/end