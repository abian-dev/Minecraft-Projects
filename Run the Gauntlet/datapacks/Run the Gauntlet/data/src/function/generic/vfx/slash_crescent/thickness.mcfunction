## Controls Thickness
# increase peak
scoreboard players operation %vfxSlashCrescent.peak generic.dz += %vfxSlashCrescent.dist generic.constant

# reset crescent slash values
scoreboard players set %vfxSlashCrescent.runItt generic.dz 0
scoreboard players operation %vfxSlashCrescent.pos generic.x = %vfxSlashCrescent.r generic.x
scoreboard players operation %vfxSlashCrescent.pos generic.y = %vfxSlashCrescent.r generic.y
scoreboard players operation %vfxSlashCrescent.pos generic.z = %vfxSlashCrescent.r generic.z
scoreboard players reset %vfxSlashCrescent.accSteps
scoreboard players reset %vfxSlashCrescent.4A/dxd
scoreboard players reset %vfxSlashCrescent.dxd
scoreboard players reset %vfxSlashCrescent.d/2
scoreboard players reset %vfxSlashCrescent.x-d/2
scoreboard players reset %vfxSlashCrescent.parabolaOut

# reset crescent slash pos
execute store result entity @s Pos[0] double 0.01 run scoreboard players get %vfxSlashCrescent.r generic.x
execute store result entity @s Pos[1] double 0.01 run scoreboard players get %vfxSlashCrescent.r generic.y
execute store result entity @s Pos[2] double 0.01 run scoreboard players get %vfxSlashCrescent.r generic.z

# rerun crescent slash
scoreboard players remove %vfxSlashCrescent.thickness generic.dz 1
function src:generic/vfx/slash_crescent/run