## Runs Circle Slash
# draw arc
function src:generic/vfx/slash_circle/arc
execute positioned as @s run function src:generic/vfx/slash_circle/draw with storage minecraft:vfx slashCircle

# calculate movement toward r2
scoreboard players operation %vfxSlashCircle.pos generic.x += %vfxSlashCircle.step generic.x
scoreboard players operation %vfxSlashCircle.pos generic.y += %vfxSlashCircle.step generic.y
scoreboard players operation %vfxSlashCircle.pos generic.z += %vfxSlashCircle.step generic.z

# store movement into pos
execute store result entity @s Pos[0] double 0.01 run scoreboard players get %vfxSlashCircle.pos generic.x
execute store result entity @s Pos[1] double 0.01 run scoreboard players get %vfxSlashCircle.pos generic.y
execute store result entity @s Pos[2] double 0.01 run scoreboard players get %vfxSlashCircle.pos generic.z

# update arc/diameter step counters and run end/flip events when their thresholds are reached
scoreboard players add %vfxSlashCircle.arcSteps generic.dz 1
scoreboard players add %vfxSlashCircle.diameterSteps generic.dz 1
execute if score %vfxSlashCircle.arcSteps generic.dz >= %vfxSlashCircle.maxSteps generic.constant run return run function src:generic/vfx/slash_circle/end
execute if score %vfxSlashCircle.diameterSteps generic.dz >= %vfxSlashCircle.accuracy generic.constant run return run function src:generic/vfx/slash_circle/flip

# recursive call for draw speed
scoreboard players add %vfxSlashCircle.runItt generic.dz 1
execute unless score %vfxSlashCircle.runItt generic.dz > %vfxSlashCircle.speed generic.constant run function src:generic/vfx/slash_circle/run
execute if score %vfxSlashCircle.runItt generic.dz > %vfxSlashCircle.speed generic.constant run scoreboard players reset %vfxSlashCircle.runItt generic.dz