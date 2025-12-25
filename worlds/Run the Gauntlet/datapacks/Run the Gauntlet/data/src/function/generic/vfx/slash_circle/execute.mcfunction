# important: accuracy ∝ radius
# example call: function src:generic/vfx/slash_circle/play {"radius":"5","completion":"150","thickness":"1","accuracy":"50","acceleration":"0","speed":"10","pitch":"0","particle":"flame"}
## Plays Circle Slash
# initialize
$scoreboard players set %vfxSlashCircle.$(id).radius generic.constant $(radius)
$scoreboard players set %vfxSlashCircle.$(id).completion generic.constant $(completion)
$scoreboard players set %vfxSlashCircle.$(id).thickness generic.constant $(thickness)
$scoreboard players set %vfxSlashCircle.$(id).accuracy generic.constant $(accuracy)
$scoreboard players set %vfxSlashCircle.$(id).acceleration generic.constant $(acceleration)
$scoreboard players set %vfxSlashCircle.$(id).speed generic.dz $(speed)
$scoreboard players set %vfxSlashCircle.$(id).pitch generic.constant $(pitch)

$scoreboard players set %vfxSlashCircle.$(id).sign generic.dz 1
$scoreboard players set %vfxSlashCircle.$(id).-1 generic.constant -1
$scoreboard players set %vfxSlashCircle.$(id).2 generic.constant 2
$scoreboard players set %vfxSlashCircle.$(id).4 generic.constant 4
$scoreboard players set %vfxSlashCircle.$(id).100 generic.constant 100

# compute full-circle step count
$scoreboard players operation %vfxSlashCircle.$(id).fullSteps generic.constant = %vfxSlashCircle.$(id).accuracy generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).fullSteps generic.constant *= %vfxSlashCircle.$(id).2 generic.constant

# compute partial-circle step count
$scoreboard players operation %vfxSlashCircle.$(id).maxSteps generic.constant = %vfxSlashCircle.$(id).completion generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).maxSteps generic.constant *= %vfxSlashCircle.$(id).fullSteps generic.constant
$scoreboard players operation %vfxSlashCircle.$(id).maxSteps generic.constant /= %vfxSlashCircle.$(id).100 generic.constant

# store
$execute store result storage minecraft:vfx slashCircle.$(id).radius int 1 run scoreboard players get %vfxSlashCircle.$(id).radius generic.constant
$execute store result storage minecraft:vfx slashCircle.$(id).pitch int 1 run scoreboard players get %vfxSlashCircle.$(id).pitch generic.constant
$execute store result storage minecraft:vfx slashCircle.$(id).thicknessOffset double 0.01 run scoreboard players get %vfxSlashCircle.$(id).thicknessOffset generic.dz
$data modify storage minecraft:vfx slashCircle.$(id).particle set value "$(particle)"
$data modify storage minecraft:vfx slashCircle.$(id).id set value $(id)

# summon
$summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:10,Tags:["vfx","vfxSlashCircle"],Duration:$(accuracy)}
$scoreboard players set @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashCircle] generic.id $(id)
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashCircle] ~ ~ ~ ~ ~
$execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashCircle] at @s run function src:generic/vfx/slash_circle/get with storage minecraft:vfx slashCircle.$(id)