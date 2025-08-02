## When detect raycast hits entity
# teleport to entity
scoreboard players set @s generic.raycast.step2 5
execute rotated ~ 0 positioned as @e[type=!#src:non_entity,distance=..2,limit=1,sort=nearest,tag=!berserker.dash.user,team=!ally] anchored feet run function src:armor/berserker/dash/step
scoreboard players reset @s generic.raycast.step2
execute at @s run tp @s ~ ~ ~ ~180 ~

# flag this happened
tag @s add berserker.dash.isFacingEntity