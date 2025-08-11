## Uses flash
tag @s add limitless.red.flash.user
scoreboard players remove @s cost.energy 10

# teleport to facing entity
function src:weapon/limitless/red/flash/to_entity/start
execute if entity @s[tag=limitless.red.flash.isFacingEntity] run return run tag @s remove limitless.red.flash.isFacingEntity

# default to regular dash if no entity
execute rotated ~ 0 run function src:weapon/limitless/red/flash/start