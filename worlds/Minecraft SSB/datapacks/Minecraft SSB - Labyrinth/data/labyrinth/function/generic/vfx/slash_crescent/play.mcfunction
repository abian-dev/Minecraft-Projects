# example call: function labyrinth:generic/vfx/slash_crescent/play {"concavity":"400","thickness":"5","accuracy":"50","yaw":"90","pitch":"0","distance":"5","particle":"flame"}
## Plays Crescent Slash
# initialize
$scoreboard players set %vfxSlashCrescent.peak labyrinth.generic.dz $(concavity)
$scoreboard players set %vfxSlashCrescent.thickness labyrinth.generic.dz $(thickness)
$scoreboard players set %vfxSlashCrescent.accuracy labyrinth.generic.constant $(accuracy)
$scoreboard players set %vfxSlashCrescent.yaw labyrinth.generic.constant $(yaw)
$scoreboard players set %vfxSlashCrescent.yawReverse labyrinth.generic.constant $(yaw)
scoreboard players add %vfxSlashCrescent.yawReverse labyrinth.generic.constant 180
$scoreboard players set %vfxSlashCrescent.pitch labyrinth.generic.constant $(pitch)
$scoreboard players set %vfxSlashCrescent.distance labyrinth.generic.constant $(distance)
scoreboard players set %vfxSlashCrescent.-1 labyrinth.generic.constant -1
scoreboard players set %vfxSlashCrescent.2 labyrinth.generic.constant 2
scoreboard players set %vfxSlashCrescent.4 labyrinth.generic.constant 4
scoreboard players set %vfxSlashCrescent.100000 labyrinth.generic.constant 100000

# store
execute store result storage minecraft:labyrinth.vfx slashCrescent.yaw int 1 run scoreboard players get %vfxSlashCrescent.yaw labyrinth.generic.constant
execute store result storage minecraft:labyrinth.vfx slashCrescent.yawReverse int 1 run scoreboard players get %vfxSlashCrescent.yawReverse labyrinth.generic.constant
execute store result storage minecraft:labyrinth.vfx slashCrescent.pitch int 1 run scoreboard players get %vfxSlashCrescent.pitch labyrinth.generic.constant
execute store result storage minecraft:labyrinth.vfx slashCrescent.distance int 1 run scoreboard players get %vfxSlashCrescent.distance labyrinth.generic.constant
$data modify storage minecraft:labyrinth.vfx slashCrescent.particle set value "$(particle)"

# summon
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["labyrinth.vfx","vfxSlashCrescent"],Duration:0}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashCrescent] ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxSlashCrescent] at @s run function labyrinth:generic/vfx/slash_crescent/get with storage minecraft:labyrinth.vfx slashCrescent
function labyrinth:generic/vfx/slash_crescent/end