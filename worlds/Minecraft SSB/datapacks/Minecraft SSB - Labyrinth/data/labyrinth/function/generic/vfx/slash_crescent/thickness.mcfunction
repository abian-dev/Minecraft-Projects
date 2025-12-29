## Controls Thickness
# increase peak
scoreboard players operation %vfxSlashCrescent.peak labyrinth.generic.dz += %vfxSlashCrescent.dist labyrinth.generic.constant

# reset crescent slash values
scoreboard players set %vfxSlashCrescent.runItt labyrinth.generic.dz 0
scoreboard players operation %vfxSlashCrescent.pos labyrinth.generic.x = %vfxSlashCrescent.r labyrinth.generic.x
scoreboard players operation %vfxSlashCrescent.pos labyrinth.generic.y = %vfxSlashCrescent.r labyrinth.generic.y
scoreboard players operation %vfxSlashCrescent.pos labyrinth.generic.z = %vfxSlashCrescent.r labyrinth.generic.z
scoreboard players reset %vfxSlashCrescent.accSteps
scoreboard players reset %vfxSlashCrescent.4A/dxd
scoreboard players reset %vfxSlashCrescent.dxd
scoreboard players reset %vfxSlashCrescent.d/2
scoreboard players reset %vfxSlashCrescent.x-d/2
scoreboard players reset %vfxSlashCrescent.parabolaOut

# reset crescent slash pos
execute store result entity @s Pos[0] double 0.01 run scoreboard players get %vfxSlashCrescent.r labyrinth.generic.x
execute store result entity @s Pos[1] double 0.01 run scoreboard players get %vfxSlashCrescent.r labyrinth.generic.y
execute store result entity @s Pos[2] double 0.01 run scoreboard players get %vfxSlashCrescent.r labyrinth.generic.z

# rerun crescent slash
scoreboard players remove %vfxSlashCrescent.thickness labyrinth.generic.dz 1
function labyrinth:generic/vfx/slash_crescent/run