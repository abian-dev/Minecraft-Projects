# note: this is scheduled
## Assign tasks to entities
# status effects
execute if score @s effect.burning.duration matches 1.. run function src:status_effect/burning
execute if score @s effect.frozen.duration matches 1.. run function src:status_effect/frozen
execute if score @s effect.stun.duration matches 1.. run function src:status_effect/stun
execute if score @s effect.lockedOn.duration matches 1.. run function src:status_effect/lockedon

## The following executes only if the entity is not stunned
execute if score @s effect.stun.duration matches 1.. run return fail

# common enemy moves
execute if entity @s[tag=enemy.dash] run return run function src:enemy/util/dash/play
execute if entity @s[tag=enemy.leap] run return run function src:enemy/util/leap/play
execute if entity @s[tag=enemy.spin] run return run function src:enemy/util/spin/play