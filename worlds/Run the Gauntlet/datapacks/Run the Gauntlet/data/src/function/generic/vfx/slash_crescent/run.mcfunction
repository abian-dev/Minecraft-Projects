## Runs Crescent Slash
# draw parabola
function src:generic/vfx/slash_crescent/parabola
execute positioned as @s run function src:generic/vfx/slash_crescent/draw with storage minecraft:vfx slashCrescent

# calculate movement toward r2
scoreboard players operation %vfxSlashCrescent.pos generic.x += %vfxSlashCrescent.step generic.x
scoreboard players operation %vfxSlashCrescent.pos generic.y += %vfxSlashCrescent.step generic.y
scoreboard players operation %vfxSlashCrescent.pos generic.z += %vfxSlashCrescent.step generic.z

# store movement into pos
execute store result entity @s Pos[0] double 0.01 run scoreboard players get %vfxSlashCrescent.pos generic.x
execute store result entity @s Pos[1] double 0.01 run scoreboard players get %vfxSlashCrescent.pos generic.y
execute store result entity @s Pos[2] double 0.01 run scoreboard players get %vfxSlashCrescent.pos generic.z

# recursive call
scoreboard players add %vfxSlashCrescent.runItt generic.dz 1
execute if score %vfxSlashCrescent.thickness generic.dz matches 1.. if score %vfxSlashCrescent.runItt generic.dz > %vfxSlashCrescent.accuracy generic.constant run function src:generic/vfx/slash_crescent/thickness
execute unless score %vfxSlashCrescent.runItt generic.dz > %vfxSlashCrescent.accuracy generic.constant run function src:generic/vfx/slash_crescent/run