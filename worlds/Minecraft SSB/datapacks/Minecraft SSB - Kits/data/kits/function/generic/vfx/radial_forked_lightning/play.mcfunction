# example call: function kits:generic/vfx/radial_forked_lightning/play {"inaccuracy":"100","rootsMin":"3","rootsMax":"5","branchesMin":"3","branchesMax":"5","branchLengthMin":"5","branchLengthMax":"10","particle":"flame"}
## Plays Forked Lightning
# dynamic constants
$scoreboard players set %vfxRadialForkedLightning.inaccuracy kits.generic.constant $(inaccuracy)
$scoreboard players set %vfxRadialForkedLightning.rootsMin kits.generic.constant $(rootsMin)
$scoreboard players set %vfxRadialForkedLightning.rootsMax kits.generic.constant $(rootsMax)
$scoreboard players set %vfxRadialForkedLightning.branchesMin kits.generic.constant $(branchesMin)
$scoreboard players set %vfxRadialForkedLightning.branchesMax kits.generic.constant $(branchesMax)
$scoreboard players set %vfxRadialForkedLightning.branchLengthMin kits.generic.constant $(branchLengthMin)
$scoreboard players set %vfxRadialForkedLightning.branchLengthMax kits.generic.constant $(branchLengthMax)

# store dynamic constants
execute store result storage minecraft:kits.vfx radialForkedLightning.inaccuracy float 0.01 run scoreboard players get %vfxRadialForkedLightning.inaccuracy kits.generic.constant
execute store result storage minecraft:kits.vfx radialForkedLightning.rootsMin int 1 run scoreboard players get %vfxRadialForkedLightning.rootsMin kits.generic.constant
execute store result storage minecraft:kits.vfx radialForkedLightning.rootsMax int 1 run scoreboard players get %vfxRadialForkedLightning.rootsMax kits.generic.constant
execute store result storage minecraft:kits.vfx radialForkedLightning.branchesMin int 1 run scoreboard players get %vfxRadialForkedLightning.branchesMin kits.generic.constant
execute store result storage minecraft:kits.vfx radialForkedLightning.branchesMax int 1 run scoreboard players get %vfxRadialForkedLightning.branchesMax kits.generic.constant
execute store result storage minecraft:kits.vfx radialForkedLightning.branchLengthMin int 1 run scoreboard players get %vfxRadialForkedLightning.branchLengthMin kits.generic.constant
execute store result storage minecraft:kits.vfx radialForkedLightning.branchLengthMax int 1 run scoreboard players get %vfxRadialForkedLightning.branchLengthMax kits.generic.constant
$data modify storage minecraft:kits.vfx radialForkedLightning.particle set value "$(particle)"

# summon
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["kits.vfx","vfxRadialForkedLightning"],Duration:0}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxRadialForkedLightning] at @s run function kits:generic/vfx/radial_forked_lightning/start with storage minecraft:kits.vfx radialForkedLightning
function kits:generic/vfx/radial_forked_lightning/end