## Runs Crescent Slash
# draw parabola
function labyrinth:generic/vfx/slash_crescent/parabola
execute positioned as @s run function labyrinth:generic/vfx/slash_crescent/draw with storage minecraft:labyrinth.vfx slashCrescent

# calculate movement toward r2
scoreboard players operation %vfxSlashCrescent.pos labyrinth.generic.x += %vfxSlashCrescent.step labyrinth.generic.x
scoreboard players operation %vfxSlashCrescent.pos labyrinth.generic.y += %vfxSlashCrescent.step labyrinth.generic.y
scoreboard players operation %vfxSlashCrescent.pos labyrinth.generic.z += %vfxSlashCrescent.step labyrinth.generic.z

# store movement into pos
execute store result entity @s Pos[0] double 0.01 run scoreboard players get %vfxSlashCrescent.pos labyrinth.generic.x
execute store result entity @s Pos[1] double 0.01 run scoreboard players get %vfxSlashCrescent.pos labyrinth.generic.y
execute store result entity @s Pos[2] double 0.01 run scoreboard players get %vfxSlashCrescent.pos labyrinth.generic.z

# recursive call
scoreboard players add %vfxSlashCrescent.runItt labyrinth.generic.dz 1
execute if score %vfxSlashCrescent.thickness labyrinth.generic.dz matches 1.. if score %vfxSlashCrescent.runItt labyrinth.generic.dz > %vfxSlashCrescent.accuracy labyrinth.generic.constant run function labyrinth:generic/vfx/slash_crescent/thickness
execute unless score %vfxSlashCrescent.runItt labyrinth.generic.dz > %vfxSlashCrescent.accuracy labyrinth.generic.constant run function labyrinth:generic/vfx/slash_crescent/run