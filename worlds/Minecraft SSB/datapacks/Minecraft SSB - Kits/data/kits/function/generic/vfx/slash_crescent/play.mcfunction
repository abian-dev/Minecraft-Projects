# example call: function kits:generic/vfx/slash_crescent/play {"concavity":"400","thickness":"5","accuracy":"50","yaw":"90","pitch":"0","distance":"5","particle":"flame"}
## Plays Crescent Slash
# initialize
$scoreboard players set %vfxSlashCrescent.peak kits.generic.dz $(concavity)
$scoreboard players set %vfxSlashCrescent.thickness kits.generic.dz $(thickness)
$scoreboard players set %vfxSlashCrescent.accuracy kits.generic.constant $(accuracy)
$scoreboard players set %vfxSlashCrescent.yaw kits.generic.constant $(yaw)
$scoreboard players set %vfxSlashCrescent.yawReverse kits.generic.constant $(yaw)
scoreboard players add %vfxSlashCrescent.yawReverse kits.generic.constant 180
$scoreboard players set %vfxSlashCrescent.pitch kits.generic.constant $(pitch)
$scoreboard players set %vfxSlashCrescent.distance kits.generic.constant $(distance)
scoreboard players set %vfxSlashCrescent.-1 kits.generic.constant -1
scoreboard players set %vfxSlashCrescent.2 kits.generic.constant 2
scoreboard players set %vfxSlashCrescent.4 kits.generic.constant 4
scoreboard players set %vfxSlashCrescent.100000 kits.generic.constant 100000

# store
execute store result storage minecraft:kits.vfx slashCrescent.yaw int 1 run scoreboard players get %vfxSlashCrescent.yaw kits.generic.constant
execute store result storage minecraft:kits.vfx slashCrescent.yawReverse int 1 run scoreboard players get %vfxSlashCrescent.yawReverse kits.generic.constant
execute store result storage minecraft:kits.vfx slashCrescent.pitch int 1 run scoreboard players get %vfxSlashCrescent.pitch kits.generic.constant
execute store result storage minecraft:kits.vfx slashCrescent.distance int 1 run scoreboard players get %vfxSlashCrescent.distance kits.generic.constant
$data modify storage minecraft:kits.vfx slashCrescent.particle set value "$(particle)"

# summon
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["kits.vfx","vfxSlashCrescent"],Duration:0}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashCrescent] ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashCrescent] at @s run function kits:generic/vfx/slash_crescent/get with storage minecraft:kits.vfx slashCrescent
function kits:generic/vfx/slash_crescent/end