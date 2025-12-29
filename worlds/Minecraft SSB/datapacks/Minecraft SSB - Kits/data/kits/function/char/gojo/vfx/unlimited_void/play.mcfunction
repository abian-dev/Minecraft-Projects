# example call: function kits:char/gojo/vfx/unlimited_void/play
## Plays Domain Expansion: Unlimited Void
# initialize
scoreboard players set %unlimitedVoid.accuracy kits.constant 300
scoreboard players set %unlimitedVoid.radius kits.constant 1000
scoreboard players set %unlimitedVoid.speed kits.constant 4

# expand domain
execute store result storage kits:vfx unlimitedVoid.accuracy int 1 run scoreboard players get %unlimitedVoid.accuracy kits.constant
execute store result storage kits:vfx unlimitedVoid.radius int 1 run scoreboard players get %unlimitedVoid.radius kits.constant
execute store result storage kits:vfx unlimitedVoid.speed int 1 run scoreboard players get %unlimitedVoid.speed kits.constant
data modify storage kits:vfx unlimitedVoid.particle set value "block_marker{block_state:{Name:black_concrete}}"
execute rotated ~ 0 positioned ^ ^1 ^-3 run particle block_marker{block_state:{Name:black_concrete}} ~ ~ ~ 0 0 0 0 1 force
execute rotated ~ 0 positioned ^ ^1 ^-3 run function kits:generic/vfx/domain/play with storage kits:vfx unlimitedVoid

# sfx
playsound block.bell.use neutral @a[distance=..20] ~ ~ ~ 2 2 1
playsound block.bell.resonate neutral @a[distance=..20] ~ ~ ~ 2 1 1