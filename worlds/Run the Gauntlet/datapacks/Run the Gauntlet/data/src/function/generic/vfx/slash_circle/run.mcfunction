## Runs Circle Slash
# draw arc
$function src:generic/vfx/slash_circle/arc with storage minecraft:vfx slashCircle.$(id)
$execute positioned as @s run function src:generic/vfx/slash_circle/draw with storage minecraft:vfx slashCircle.$(id)

# calculate movement toward r2
$scoreboard players operation %vfxSlashCircle.$(id).pos generic.x += %vfxSlashCircle.$(id).step generic.x
$scoreboard players operation %vfxSlashCircle.$(id).pos generic.y += %vfxSlashCircle.$(id).step generic.y
$scoreboard players operation %vfxSlashCircle.$(id).pos generic.z += %vfxSlashCircle.$(id).step generic.z

# store movement into pos
$execute store result entity @s Pos[0] double 0.01 run scoreboard players get %vfxSlashCircle.$(id).pos generic.x
$execute store result entity @s Pos[1] double 0.01 run scoreboard players get %vfxSlashCircle.$(id).pos generic.y
$execute store result entity @s Pos[2] double 0.01 run scoreboard players get %vfxSlashCircle.$(id).pos generic.z

# update arc/diameter step counters and run end/flip events when their thresholds are reached
$scoreboard players add %vfxSlashCircle.$(id).arcSteps generic.dz 1
$scoreboard players add %vfxSlashCircle.$(id).diameterSteps generic.dz 1
$execute if score %vfxSlashCircle.$(id).arcSteps generic.dz >= %vfxSlashCircle.$(id).maxSteps generic.constant run return run function src:generic/vfx/slash_circle/end with storage minecraft:vfx slashCircle.$(id)
$execute if score %vfxSlashCircle.$(id).diameterSteps generic.dz >= %vfxSlashCircle.$(id).accuracy generic.constant run return run function src:generic/vfx/slash_circle/flip with storage minecraft:vfx slashCircle.$(id)

# recursive call for draw speed
$scoreboard players add %vfxSlashCircle.$(id).runItt generic.dz 1
$execute unless score %vfxSlashCircle.$(id).runItt generic.dz > %vfxSlashCircle.$(id).speed generic.dz run function src:generic/vfx/slash_circle/run with storage minecraft:vfx slashCircle.$(id)
$execute if score %vfxSlashCircle.$(id).runItt generic.dz > %vfxSlashCircle.$(id).speed generic.dz run scoreboard players set %vfxSlashCircle.$(id).runItt generic.dz -1
$execute if score %vfxSlashCircle.$(id).runItt generic.dz matches -1 run scoreboard players operation %vfxSlashCircle.$(id).speed generic.dz += %vfxSlashCircle.$(id).acceleration generic.constant
$execute if score %vfxSlashCircle.$(id).runItt generic.dz matches -1 run scoreboard players reset %vfxSlashCircle.$(id).runItt generic.dz