## Executed at thrown sword every tick
# bounce (dist = movement / 0.25)
scoreboard players remove @s generic.raycast.dist 8
execute if score @s generic.raycast.dist matches ..8 run function src:generic/functions/bounce/trigger

# movement
tp @s ^ ^ ^2
function src:weapon/miracles/swords/tick

# automatic despawn duration
execute unless score @s generic.math matches 60.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 60.. run function src:weapon/miracles/swords/throw/end