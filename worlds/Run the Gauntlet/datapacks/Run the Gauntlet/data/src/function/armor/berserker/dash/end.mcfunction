## At raycast end
tp @s ~ ~ ~

# fx
execute rotated as @s run particle squid_ink ^ ^1 ^1 0 0 0 0.3 10 force
playsound entity.wither.shoot neutral @a[distance=..10] ~ ~ ~ 0.1 0 0.1

# reset
tag @s remove berserker.dash.user