# example call: function src:generic/vfx/slash_crescent/play {"concavity":"400","thickness":"5","accuracy":"50","yaw":"90","pitch":"0","distance":"5","particle":"flame"}
## Plays Crescent Slash
# initialize
$scoreboard players set %vfxSlashCrescent.peak generic.dz $(concavity)
$scoreboard players set %vfxSlashCrescent.thickness generic.dz $(thickness)
$scoreboard players set %vfxSlashCrescent.accuracy generic.constant $(accuracy)
$scoreboard players set %vfxSlashCrescent.yaw generic.constant $(yaw)
$scoreboard players set %vfxSlashCrescent.yawReverse generic.constant $(yaw)
scoreboard players add %vfxSlashCrescent.yawReverse generic.constant 180
$scoreboard players set %vfxSlashCrescent.pitch generic.constant $(pitch)
$scoreboard players set %vfxSlashCrescent.distance generic.constant $(distance)
scoreboard players set %vfxSlashCrescent.-1 generic.constant -1
scoreboard players set %vfxSlashCrescent.2 generic.constant 2
scoreboard players set %vfxSlashCrescent.4 generic.constant 4
scoreboard players set %vfxSlashCrescent.100000 generic.constant 100000

# store
execute store result storage minecraft:vfx slashCrescent.yaw int 1 run scoreboard players get %vfxSlashCrescent.yaw generic.constant
execute store result storage minecraft:vfx slashCrescent.yawReverse int 1 run scoreboard players get %vfxSlashCrescent.yawReverse generic.constant
execute store result storage minecraft:vfx slashCrescent.pitch int 1 run scoreboard players get %vfxSlashCrescent.pitch generic.constant
execute store result storage minecraft:vfx slashCrescent.distance int 1 run scoreboard players get %vfxSlashCrescent.distance generic.constant
$data modify storage minecraft:vfx slashCrescent.particle set value "$(particle)"

# summon
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["vfx","vfxSlashCrescent"],Duration:0}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashCrescent] ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashCrescent] at @s run function src:generic/vfx/slash_crescent/get with storage minecraft:vfx slashCrescent
function src:generic/vfx/slash_crescent/end