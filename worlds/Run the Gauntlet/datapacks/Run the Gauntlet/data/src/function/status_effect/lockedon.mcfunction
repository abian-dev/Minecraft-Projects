# note: locked-on means more susceptible to homing objects
## Executed at entities with locked-on every second
scoreboard players remove @s effect.lockedOn.duration 1
execute if score @s effect.lockedOn.duration matches ..0 run return run scoreboard players reset @s effect.lockedOn.duration