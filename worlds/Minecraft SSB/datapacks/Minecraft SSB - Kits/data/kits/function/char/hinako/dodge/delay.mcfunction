schedule clear kits:char/hinako/dodge/delay
execute at @e[type=area_effect_cloud,tag=HinakoDodgeDestination,limit=1,sort=nearest] if entity @e[distance=..8,type=!#kits:non_entity,type=!minecraft:player,tag=!Invincible,tag=!Hinako,tag=!InLabyrinth] positioned as @e[type=area_effect_cloud,tag=HinakoDodgeDestination,limit=1,sort=nearest] run tp @p[tag=Hinako] ~ ~ ~ facing entity @e[distance=..8,type=!#kits:non_entity,type=!minecraft:player,tag=!Invincible,tag=!Hinako,tag=!InLabyrinth,limit=1,sort=nearest]
execute at @e[type=area_effect_cloud,tag=HinakoDodgeDestination,limit=1,sort=nearest] unless entity @e[distance=..8,type=!#kits:non_entity,type=!minecraft:player,tag=!Invincible,tag=!Hinako,tag=!InLabyrinth] positioned as @e[type=area_effect_cloud,tag=HinakoDodgeDestination,limit=1,sort=nearest] run tp @p[tag=Hinako] ~ ~ ~
kill @e[type=area_effect_cloud,tag=HinakoDodgeDestination]

tag @p[tag=Hinako] remove HinakoPerfectDodge
effect clear @p[tag=Hinako] minecraft:resistance
attribute @p[tag=Hinako] minecraft:knockback_resistance modifier remove kb.dodge.hinako
attribute @p[tag=Hinako] minecraft:movement_speed modifier remove speed.dodge.hinako