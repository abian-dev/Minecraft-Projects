# note: this is scheduled
## Assign tasks to entities
# status effects
execute if score @s effect.burning.duration matches 1.. run function src:status_effect/burning/active
execute if score @s effect.frozen.duration matches 1.. run function src:status_effect/frozen/active
execute if score @s effect.stun.duration matches 1.. run function src:status_effect/stun/active
execute if score @s effect.lockedOn.duration matches 1.. run function src:status_effect/lockedon/active

## The following executes only if the entity is not stunned
execute if score @s effect.stun.duration matches 1.. run return fail