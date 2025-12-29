## Runs Crescent Slash
# draw parabola
function kits:generic/vfx/slash_crescent/parabola
execute positioned as @s run function kits:generic/vfx/slash_crescent/draw with storage minecraft:kits.vfx slashCrescent

# calculate movement toward r2
scoreboard players operation %vfxSlashCrescent.pos kits.generic.x += %vfxSlashCrescent.step kits.generic.x
scoreboard players operation %vfxSlashCrescent.pos kits.generic.y += %vfxSlashCrescent.step kits.generic.y
scoreboard players operation %vfxSlashCrescent.pos kits.generic.z += %vfxSlashCrescent.step kits.generic.z

# store movement into pos
execute store result entity @s Pos[0] double 0.01 run scoreboard players get %vfxSlashCrescent.pos kits.generic.x
execute store result entity @s Pos[1] double 0.01 run scoreboard players get %vfxSlashCrescent.pos kits.generic.y
execute store result entity @s Pos[2] double 0.01 run scoreboard players get %vfxSlashCrescent.pos kits.generic.z

# recursive call
scoreboard players add %vfxSlashCrescent.runItt kits.generic.dz 1
execute if score %vfxSlashCrescent.thickness kits.generic.dz matches 1.. if score %vfxSlashCrescent.runItt kits.generic.dz > %vfxSlashCrescent.accuracy kits.generic.constant run function kits:generic/vfx/slash_crescent/thickness
execute unless score %vfxSlashCrescent.runItt kits.generic.dz > %vfxSlashCrescent.accuracy kits.generic.constant run function kits:generic/vfx/slash_crescent/run