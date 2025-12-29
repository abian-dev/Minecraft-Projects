# example call: function kits:generic/vfx/slash_circle/play {"radius":"5","completion":"150","thickness":"1","accuracy":"50","acceleration":"0","speed":"10","pitch":"0","particle":"flame"}
## The entry-point to execute function
# creates a new id and uses it to associate this instance with that id
scoreboard players add %vfx.id kits.generic.id 1
execute store result storage minecraft:kits.vfx curr.slashCircle.id int 1 run scoreboard players get %vfx.id kits.generic.id

# compute effective duration
scoreboard players set %vfxSlashCircle.100 kits.generic.constant 100
$scoreboard players set %vfxSlashCircle.completion kits.generic.constant $(completion)
$scoreboard players set %vfxSlashCircle.duration kits.generic.constant $(accuracy)
scoreboard players operation %vfxSlashCircle.duration kits.generic.constant += %vfxSlashCircle.duration kits.generic.constant
scoreboard players operation %vfxSlashCircle.duration kits.generic.constant *= %vfxSlashCircle.completion kits.generic.constant
scoreboard players operation %vfxSlashCircle.duration kits.generic.constant /= %vfxSlashCircle.100 kits.generic.constant
execute store result storage minecraft:kits.vfx curr.slashCircle.duration int 1 run scoreboard players get %vfxSlashCircle.duration kits.generic.constant

# store parameters
$data modify storage minecraft:kits.vfx curr.slashCircle.radius set value $(radius)
$data modify storage minecraft:kits.vfx curr.slashCircle.completion set value $(completion)
$data modify storage minecraft:kits.vfx curr.slashCircle.thickness set value $(thickness)
$data modify storage minecraft:kits.vfx curr.slashCircle.accuracy set value $(accuracy)
$data modify storage minecraft:kits.vfx curr.slashCircle.acceleration set value $(acceleration)
$data modify storage minecraft:kits.vfx curr.slashCircle.speed set value $(speed)
$data modify storage minecraft:kits.vfx curr.slashCircle.pitch set value $(pitch)
$data modify storage minecraft:kits.vfx curr.slashCircle.particle set value "$(particle)"

# execute
function kits:generic/vfx/slash_circle/execute with storage minecraft:kits.vfx curr.slashCircle

# reset
scoreboard players reset %vfxSlashCircle.100
scoreboard players reset %vfxSlashCircle.completion
scoreboard players reset %vfxSlashCircle.duration