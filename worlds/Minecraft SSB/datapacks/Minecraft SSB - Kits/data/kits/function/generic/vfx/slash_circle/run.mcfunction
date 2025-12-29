## Runs Circle Slash
# draw arc
$function kits:generic/vfx/slash_circle/arc with storage minecraft:kits.vfx slashCircle.$(id)
$execute positioned as @s run function kits:generic/vfx/slash_circle/draw with storage minecraft:kits.vfx slashCircle.$(id)

# calculate movement toward r2
$scoreboard players operation %vfxSlashCircle.$(id).pos kits.generic.x += %vfxSlashCircle.$(id).step kits.generic.x
$scoreboard players operation %vfxSlashCircle.$(id).pos kits.generic.y += %vfxSlashCircle.$(id).step kits.generic.y
$scoreboard players operation %vfxSlashCircle.$(id).pos kits.generic.z += %vfxSlashCircle.$(id).step kits.generic.z

# store movement into pos
$execute store result entity @s Pos[0] double 0.01 run scoreboard players get %vfxSlashCircle.$(id).pos kits.generic.x
$execute store result entity @s Pos[1] double 0.01 run scoreboard players get %vfxSlashCircle.$(id).pos kits.generic.y
$execute store result entity @s Pos[2] double 0.01 run scoreboard players get %vfxSlashCircle.$(id).pos kits.generic.z

# update arc/diameter step counters and run end/flip events when their thresholds are reached
$scoreboard players add %vfxSlashCircle.$(id).arcSteps kits.generic.dz 1
$scoreboard players add %vfxSlashCircle.$(id).diameterSteps kits.generic.dz 1
$execute if score %vfxSlashCircle.$(id).arcSteps kits.generic.dz >= %vfxSlashCircle.$(id).maxSteps kits.generic.constant run return run function kits:generic/vfx/slash_circle/end with storage minecraft:kits.vfx slashCircle.$(id)
$execute if score %vfxSlashCircle.$(id).diameterSteps kits.generic.dz >= %vfxSlashCircle.$(id).accuracy kits.generic.constant run return run function kits:generic/vfx/slash_circle/flip with storage minecraft:kits.vfx slashCircle.$(id)

# recursive call for draw speed
$scoreboard players add %vfxSlashCircle.$(id).runItt kits.generic.dz 1
$execute unless score %vfxSlashCircle.$(id).runItt kits.generic.dz > %vfxSlashCircle.$(id).speed kits.generic.dz run function kits:generic/vfx/slash_circle/run with storage minecraft:kits.vfx slashCircle.$(id)
$execute if score %vfxSlashCircle.$(id).runItt kits.generic.dz > %vfxSlashCircle.$(id).speed kits.generic.dz run scoreboard players set %vfxSlashCircle.$(id).runItt kits.generic.dz -1
$execute if score %vfxSlashCircle.$(id).runItt kits.generic.dz matches -1 run scoreboard players operation %vfxSlashCircle.$(id).speed kits.generic.dz += %vfxSlashCircle.$(id).acceleration kits.generic.constant
$execute if score %vfxSlashCircle.$(id).runItt kits.generic.dz matches -1 run scoreboard players reset %vfxSlashCircle.$(id).runItt kits.generic.dz