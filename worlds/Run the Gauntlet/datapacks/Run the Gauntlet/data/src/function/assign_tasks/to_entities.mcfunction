# note: this is scheduled
## Assign tasks to entities
# shorter stun duration in pvp
execute if entity @s[scores={effect.stun.duration=0..},tag=system.pvp.player] run scoreboard players remove @s effect.stun.duration 1

# status effects
execute if score @s effect.burning.duration matches 1.. run function src:status_effect/burning
execute if score @s effect.frozen.duration matches 1.. run function src:status_effect/frozen
execute if score @s effect.stun.duration matches 1.. run function src:status_effect/stun
execute if score @s effect.lockedOn.duration matches 1.. run function src:status_effect/lockedon

## The following executes only if the entity is not stunned
execute if score @s effect.stun.duration matches 1.. run return fail