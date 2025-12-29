# important: accuracy ∝ radius
# example call: function labyrinth:generic/vfx/slash_circle/play {"radius":"5","completion":"150","thickness":"1","accuracy":"50","acceleration":"0","speed":"10","pitch":"0","particle":"flame"}
## Plays Circle Slash
# initialize
$scoreboard players set %vfxSlashCircle.$(id).radius labyrinth.generic.constant $(radius)
$scoreboard players set %vfxSlashCircle.$(id).completion labyrinth.generic.constant $(completion)
$scoreboard players set %vfxSlashCircle.$(id).thickness labyrinth.generic.constant $(thickness)
$scoreboard players set %vfxSlashCircle.$(id).accuracy labyrinth.generic.constant $(accuracy)
$scoreboard players set %vfxSlashCircle.$(id).acceleration labyrinth.generic.constant $(acceleration)
$scoreboard players set %vfxSlashCircle.$(id).speed labyrinth.generic.dz $(speed)
$scoreboard players set %vfxSlashCircle.$(id).pitch labyrinth.generic.constant $(pitch)

$scoreboard players set %vfxSlashCircle.$(id).sign labyrinth.generic.dz 1
$scoreboard players set %vfxSlashCircle.$(id).-1 labyrinth.generic.constant -1
$scoreboard players set %vfxSlashCircle.$(id).2 labyrinth.generic.constant 2
$scoreboard players set %vfxSlashCircle.$(id).4 labyrinth.generic.constant 4
$scoreboard players set %vfxSlashCircle.$(id).100 labyrinth.generic.constant 100

# compute full-circle step count
$scoreboard players operation %vfxSlashCircle.$(id).fullSteps labyrinth.generic.constant = %vfxSlashCircle.$(id).accuracy labyrinth.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).fullSteps labyrinth.generic.constant *= %vfxSlashCircle.$(id).2 labyrinth.generic.constant

# compute partial-circle step count
$scoreboard players operation %vfxSlashCircle.$(id).maxSteps labyrinth.generic.constant = %vfxSlashCircle.$(id).completion labyrinth.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).maxSteps labyrinth.generic.constant *= %vfxSlashCircle.$(id).fullSteps labyrinth.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).maxSteps labyrinth.generic.constant /= %vfxSlashCircle.$(id).100 labyrinth.generic.constant

# store
$execute store result storage minecraft:labyrinth.vfx slashCircle.$(id).radius int 1 run scoreboard players get %vfxSlashCircle.$(id).radius labyrinth.generic.constant
$execute store result storage minecraft:labyrinth.vfx slashCircle.$(id).pitch int 1 run scoreboard players get %vfxSlashCircle.$(id).pitch labyrinth.generic.constant
$execute store result storage minecraft:labyrinth.vfx slashCircle.$(id).thicknessOffset double 0.01 run scoreboard players get %vfxSlashCircle.$(id).thicknessOffset labyrinth.generic.dz
$data modify storage minecraft:labyrinth.vfx slashCircle.$(id).particle set value "$(particle)"
$data modify storage minecraft:labyrinth.vfx slashCircle.$(id).id set value $(id)

# summon
$summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:10,Tags:["labyrinth.vfx","vfxSlashCircle"],Duration:$(duration)}
$scoreboard players set @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashCircle] labyrinth.generic.id $(id)
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashCircle] ~ ~ ~ ~ ~
$execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashCircle] at @s run function labyrinth:generic/vfx/slash_circle/get with storage minecraft:labyrinth.vfx slashCircle.$(id)