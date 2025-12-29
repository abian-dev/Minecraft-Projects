## Controls Thickness
# increase peak
scoreboard players operation %vfxSlashCrescent.peak kits.generic.dz += %vfxSlashCrescent.dist kits.generic.constant

# reset crescent slash values
scoreboard players set %vfxSlashCrescent.runItt kits.generic.dz 0
scoreboard players operation %vfxSlashCrescent.pos kits.generic.x = %vfxSlashCrescent.r kits.generic.x
scoreboard players operation %vfxSlashCrescent.pos kits.generic.y = %vfxSlashCrescent.r kits.generic.y
scoreboard players operation %vfxSlashCrescent.pos kits.generic.z = %vfxSlashCrescent.r kits.generic.z
scoreboard players reset %vfxSlashCrescent.accSteps
scoreboard players reset %vfxSlashCrescent.4A/dxd
scoreboard players reset %vfxSlashCrescent.dxd
scoreboard players reset %vfxSlashCrescent.d/2
scoreboard players reset %vfxSlashCrescent.x-d/2
scoreboard players reset %vfxSlashCrescent.parabolaOut

# reset crescent slash pos
execute store result entity @s Pos[0] double 0.01 run scoreboard players get %vfxSlashCrescent.r kits.generic.x
execute store result entity @s Pos[1] double 0.01 run scoreboard players get %vfxSlashCrescent.r kits.generic.y
execute store result entity @s Pos[2] double 0.01 run scoreboard players get %vfxSlashCrescent.r kits.generic.z

# rerun crescent slash
scoreboard players remove %vfxSlashCrescent.thickness kits.generic.dz 1
function kits:generic/vfx/slash_crescent/run