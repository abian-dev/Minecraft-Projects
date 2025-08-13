## Resource pickup effects
playsound block.beacon.activate neutral @a[distance=..5] ~ ~ ~ 1 2 1

# regenerate resource with +50 multiplier
tag @s add supply.resource.pickedUp
function src:system/util/cost_regen/handler
tag @s remove supply.resource.pickedUp