## Executed at homing rocket every tick
# homing
# execute anchored eyes facing entity $(target) eyes positioned ^ ^ ^$(snappingSpeed) rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^$(speed) ~ ~
execute anchored eyes facing entity @e[type=!#src:non_entity,distance=..40,scores={effect.lockedOn.duration=8..},tag=!rocketlauncher.lockon.user,team=!ally] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^ ~ ~

# limit travel distance
scoreboard players remove @s generic.raycast.dist 1
execute if score @s generic.raycast.dist matches -1..1 run return run function src:weapon/rocket_launcher/lockon/firing/collide

# step = speed
# run slowcast
scoreboard players set @s generic.raycast.step 5
function src:weapon/rocket_launcher/lockon/firing/step
scoreboard players reset @s generic.raycast.step