# example call: function src:generic/vfx/radial_forked_lightning/play {"inaccuracy":"100","rootsMin":"3","rootsMax":"5","branchesMin":"3","branchesMax":"5","branchLengthMin":"5","branchLengthMax":"10","particle":"flame"}
## Plays Forked Lightning
# dynamic constants
$scoreboard players set %vfxRadialForkedLightning.inaccuracy generic.constant $(inaccuracy)
$scoreboard players set %vfxRadialForkedLightning.rootsMin generic.constant $(rootsMin)
$scoreboard players set %vfxRadialForkedLightning.rootsMax generic.constant $(rootsMax)
$scoreboard players set %vfxRadialForkedLightning.branchesMin generic.constant $(branchesMin)
$scoreboard players set %vfxRadialForkedLightning.branchesMax generic.constant $(branchesMax)
$scoreboard players set %vfxRadialForkedLightning.branchLengthMin generic.constant $(branchLengthMin)
$scoreboard players set %vfxRadialForkedLightning.branchLengthMax generic.constant $(branchLengthMax)

# store dynamic constants
execute store result storage minecraft:vfx radialForkedLightning.inaccuracy float 0.01 run scoreboard players get %vfxRadialForkedLightning.inaccuracy generic.constant
execute store result storage minecraft:vfx radialForkedLightning.rootsMin int 1 run scoreboard players get %vfxRadialForkedLightning.rootsMin generic.constant
execute store result storage minecraft:vfx radialForkedLightning.rootsMax int 1 run scoreboard players get %vfxRadialForkedLightning.rootsMax generic.constant
execute store result storage minecraft:vfx radialForkedLightning.branchesMin int 1 run scoreboard players get %vfxRadialForkedLightning.branchesMin generic.constant
execute store result storage minecraft:vfx radialForkedLightning.branchesMax int 1 run scoreboard players get %vfxRadialForkedLightning.branchesMax generic.constant
execute store result storage minecraft:vfx radialForkedLightning.branchLengthMin int 1 run scoreboard players get %vfxRadialForkedLightning.branchLengthMin generic.constant
execute store result storage minecraft:vfx radialForkedLightning.branchLengthMax int 1 run scoreboard players get %vfxRadialForkedLightning.branchLengthMax generic.constant
$data modify storage minecraft:vfx radialForkedLightning.particle set value "$(particle)"

# summon
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["vfx","vfxRadialForkedLightning"],Duration:0}
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxRadialForkedLightning] at @s run function src:generic/vfx/radial_forked_lightning/start with storage minecraft:vfx radialForkedLightning
function src:generic/vfx/radial_forked_lightning/end