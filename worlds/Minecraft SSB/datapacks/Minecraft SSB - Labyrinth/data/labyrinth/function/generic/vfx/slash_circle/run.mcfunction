## Runs Circle Slash
# draw arc
$function labyrinth:generic/vfx/slash_circle/arc with storage minecraft:labyrinth.vfx slashCircle.$(id)
$execute positioned as @s run function labyrinth:generic/vfx/slash_circle/draw with storage minecraft:labyrinth.vfx slashCircle.$(id)

# calculate movement toward r2
$scoreboard players operation %vfxSlashCircle.$(id).pos labyrinth.generic.x += %vfxSlashCircle.$(id).step labyrinth.generic.x
$scoreboard players operation %vfxSlashCircle.$(id).pos labyrinth.generic.y += %vfxSlashCircle.$(id).step labyrinth.generic.y
$scoreboard players operation %vfxSlashCircle.$(id).pos labyrinth.generic.z += %vfxSlashCircle.$(id).step labyrinth.generic.z

# store movement into pos
$execute store result entity @s Pos[0] double 0.01 run scoreboard players get %vfxSlashCircle.$(id).pos labyrinth.generic.x
$execute store result entity @s Pos[1] double 0.01 run scoreboard players get %vfxSlashCircle.$(id).pos labyrinth.generic.y
$execute store result entity @s Pos[2] double 0.01 run scoreboard players get %vfxSlashCircle.$(id).pos labyrinth.generic.z

# update arc/diameter step counters and run end/flip events when their thresholds are reached
$scoreboard players add %vfxSlashCircle.$(id).arcSteps labyrinth.generic.dz 1
$scoreboard players add %vfxSlashCircle.$(id).diameterSteps labyrinth.generic.dz 1
$execute if score %vfxSlashCircle.$(id).arcSteps labyrinth.generic.dz >= %vfxSlashCircle.$(id).maxSteps labyrinth.generic.constant run return run function labyrinth:generic/vfx/slash_circle/end with storage minecraft:labyrinth.vfx slashCircle.$(id)
$execute if score %vfxSlashCircle.$(id).diameterSteps labyrinth.generic.dz >= %vfxSlashCircle.$(id).accuracy labyrinth.generic.constant run return run function labyrinth:generic/vfx/slash_circle/flip with storage minecraft:labyrinth.vfx slashCircle.$(id)

# recursive call for draw speed
$scoreboard players add %vfxSlashCircle.$(id).runItt labyrinth.generic.dz 1
$execute unless score %vfxSlashCircle.$(id).runItt labyrinth.generic.dz > %vfxSlashCircle.$(id).speed labyrinth.generic.dz run function labyrinth:generic/vfx/slash_circle/run with storage minecraft:labyrinth.vfx slashCircle.$(id)
$execute if score %vfxSlashCircle.$(id).runItt labyrinth.generic.dz > %vfxSlashCircle.$(id).speed labyrinth.generic.dz run scoreboard players set %vfxSlashCircle.$(id).runItt labyrinth.generic.dz -1
$execute if score %vfxSlashCircle.$(id).runItt labyrinth.generic.dz matches -1 run scoreboard players operation %vfxSlashCircle.$(id).speed labyrinth.generic.dz += %vfxSlashCircle.$(id).acceleration labyrinth.generic.constant
$execute if score %vfxSlashCircle.$(id).runItt labyrinth.generic.dz matches -1 run scoreboard players reset %vfxSlashCircle.$(id).runItt labyrinth.generic.dz