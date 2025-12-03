# important: accuracy ∝ radius
# example call: function src:generic/vfx/slash_circle/play {"radius":"5","completion":"150","thickness":"1","accuracy":"50","speed":"10","pitch":"0","particle":"flame"}
## Plays Circle Slash
# initialize
$scoreboard players set %vfxSlashCircle.radius generic.constant $(radius)
$scoreboard players set %vfxSlashCircle.completion generic.constant $(completion)
$scoreboard players set %vfxSlashCircle.thickness generic.constant $(thickness)
$scoreboard players set %vfxSlashCircle.accuracy generic.constant $(accuracy)
$scoreboard players set %vfxSlashCircle.speed generic.constant $(speed)
$scoreboard players set %vfxSlashCircle.pitch generic.constant $(pitch)

scoreboard players set %vfxSlashCircle.sign generic.dz 1
scoreboard players set %vfxSlashCircle.-1 generic.constant -1
scoreboard players set %vfxSlashCircle.2 generic.constant 2
scoreboard players set %vfxSlashCircle.4 generic.constant 4
scoreboard players set %vfxSlashCircle.100 generic.constant 100

# compute full-circle step count
scoreboard players operation %vfxSlashCircle.fullSteps generic.constant = %vfxSlashCircle.accuracy generic.constant
scoreboard players operation %vfxSlashCircle.fullSteps generic.constant *= %vfxSlashCircle.2 generic.constant

# compute partial-circle step count
scoreboard players operation %vfxSlashCircle.maxSteps generic.constant = %vfxSlashCircle.completion generic.constant
scoreboard players operation %vfxSlashCircle.maxSteps generic.constant *= %vfxSlashCircle.fullSteps generic.constant
scoreboard players operation %vfxSlashCircle.maxSteps generic.constant /= %vfxSlashCircle.100 generic.constant

# store
execute store result storage minecraft:vfx slashCircle.radius int 1 run scoreboard players get %vfxSlashCircle.radius generic.constant
execute store result storage minecraft:vfx slashCircle.pitch int 1 run scoreboard players get %vfxSlashCircle.pitch generic.constant
execute store result storage minecraft:vfx slashCircle.thicknessOffset double 0.01 run scoreboard players get %vfxSlashCircle.thicknessOffset generic.dz
$data modify storage minecraft:vfx slashCircle.particle set value "$(particle)"

# summon
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["vfx","vfxSlashCircle"],Duration:100}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashCircle] ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashCircle] at @s run function src:generic/vfx/slash_circle/get with storage minecraft:vfx slashCircle