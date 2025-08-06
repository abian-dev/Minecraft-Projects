## At raycast end
tp @s ~ ~ ~
function src:weapon/limitless/red/reversal/use

# fx
execute rotated as @s run particle flash ^ ^1 ^1 0 0 0 0 1 force
playsound entity.illusioner.mirror_move neutral @a[distance=..10] ~ ~ ~ 1 0 1

# reset
tag @s remove limitless.red.flash.user