# important: accuracy ∝ radius
# example call: function kits:generic/vfx/slash_circle/play {"radius":"5","completion":"150","thickness":"1","accuracy":"50","acceleration":"0","speed":"10","pitch":"0","particle":"flame"}
## Plays Circle Slash
# initialize
$scoreboard players set %vfxSlashCircle.$(id).radius kits.generic.constant $(radius)
$scoreboard players set %vfxSlashCircle.$(id).completion kits.generic.constant $(completion)
$scoreboard players set %vfxSlashCircle.$(id).thickness kits.generic.constant $(thickness)
$scoreboard players set %vfxSlashCircle.$(id).accuracy kits.generic.constant $(accuracy)
$scoreboard players set %vfxSlashCircle.$(id).acceleration kits.generic.constant $(acceleration)
$scoreboard players set %vfxSlashCircle.$(id).speed kits.generic.dz $(speed)
$scoreboard players set %vfxSlashCircle.$(id).pitch kits.generic.constant $(pitch)

$scoreboard players set %vfxSlashCircle.$(id).sign kits.generic.dz 1
$scoreboard players set %vfxSlashCircle.$(id).-1 kits.generic.constant -1
$scoreboard players set %vfxSlashCircle.$(id).2 kits.generic.constant 2
$scoreboard players set %vfxSlashCircle.$(id).4 kits.generic.constant 4
$scoreboard players set %vfxSlashCircle.$(id).100 kits.generic.constant 100

# compute full-circle step count
$scoreboard players operation %vfxSlashCircle.$(id).fullSteps kits.generic.constant = %vfxSlashCircle.$(id).accuracy kits.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).fullSteps kits.generic.constant *= %vfxSlashCircle.$(id).2 kits.generic.constant

# compute partial-circle step count
$scoreboard players operation %vfxSlashCircle.$(id).maxSteps kits.generic.constant = %vfxSlashCircle.$(id).completion kits.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).maxSteps kits.generic.constant *= %vfxSlashCircle.$(id).fullSteps kits.generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).maxSteps kits.generic.constant /= %vfxSlashCircle.$(id).100 kits.generic.constant

# store
$execute store result storage minecraft:kits.vfx slashCircle.$(id).radius int 1 run scoreboard players get %vfxSlashCircle.$(id).radius kits.generic.constant
$execute store result storage minecraft:kits.vfx slashCircle.$(id).pitch int 1 run scoreboard players get %vfxSlashCircle.$(id).pitch kits.generic.constant
$execute store result storage minecraft:kits.vfx slashCircle.$(id).thicknessOffset double 0.01 run scoreboard players get %vfxSlashCircle.$(id).thicknessOffset kits.generic.dz
$data modify storage minecraft:kits.vfx slashCircle.$(id).particle set value "$(particle)"
$data modify storage minecraft:kits.vfx slashCircle.$(id).id set value $(id)

# summon
$summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:10,Tags:["kits.vfx","vfxSlashCircle"],Duration:$(duration)}
$scoreboard players set @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashCircle] kits.generic.id $(id)
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashCircle] ~ ~ ~ ~ ~
$execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashCircle] at @s run function kits:generic/vfx/slash_circle/get with storage minecraft:kits.vfx slashCircle.$(id)