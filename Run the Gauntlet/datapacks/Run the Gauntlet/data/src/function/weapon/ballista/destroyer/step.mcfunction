## Slowcast step function
# collision check
execute positioned ^ ^ ^0.5 run function src:generic/functions/slowcast/check_block
execute if score @s generic.raycast.step matches -1 run return run function src:weapon/ballista/destroyer/collide

execute if entity @s[tag=ballista.destroyer.low] as @e[type=!#src:non_entity,distance=..3,tag=!ballista.destroyer.user,team=!ally] at @s run damage @s 0.4 src:bypass_player_attack by @p[tag=ballista.destroyer.user]
execute if entity @s[tag=ballista.destroyer.mid] as @e[type=!#src:non_entity,distance=..4,tag=!ballista.destroyer.user,team=!ally] at @s run damage @s 0.6 src:bypass_player_attack by @p[tag=ballista.destroyer.user]
execute if entity @s[tag=ballista.destroyer.high] as @e[type=!#src:non_entity,distance=..5,tag=!ballista.destroyer.user,team=!ally] at @s run damage @s 0.8 src:bypass_player_attack by @p[tag=ballista.destroyer.user]

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute if score @s generic.raycast.step matches 0 run tp @s ~ ~ ~
execute if score @s generic.raycast.step matches 1.. positioned ^ ^ ^0.5 run function src:weapon/ballista/destroyer/step