## Executed at supplies every tick
# vfx
execute if entity @s[tag=supply.ammo] run function src:supply/ammo/vfx
execute if entity @s[tag=supply.armor] run particle dust{color:[0.0,1.0,0.0],scale:1.0} ~ ~ ~ 0 0 0 0 1 force
execute if entity @s[tag=supply.health] run particle dust{color:[0.0,1.0,1.0],scale:1.0} ~ ~ ~ 0 0 0 0 1 force

# spin logic
execute if entity @s[tag=!supply.spin] unless block ~ ~-0.5 ~ #src:passable run tag @s add supply.spin
execute if entity @s[tag=supply.spin] run tp @s ~ ~ ~ ~10 ~

# pickup logic
scoreboard players operation %supply.search user.id = @s user.id
execute as @a[distance=..10] if score @s user.id = %supply.search user.id run tag @s add supply.pickupLocked
execute if entity @s[tag=supply.spin] if entity @p[distance=..10,tag=!supply.pickupLocked] facing entity @p[tag=!supply.pickupLocked] feet positioned ^ ^ ^0.5 run tp @s ~ ~ ~
execute if entity @s[tag=supply.spin] if entity @p[distance=..2,tag=!supply.pickupLocked] run return run function src:supply/pickup
scoreboard players reset %supply.search
tag @a[tag=supply.pickupLocked] remove supply.pickupLocked

# automatic despawn duration
execute unless score @s generic.math matches 100.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 100.. run kill @s