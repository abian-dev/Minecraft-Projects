## When detect raycast collides
execute as @e[type=!#src:non_entity,distance=..1.5,tag=!chainsaw.rip.user,team=!ally] at @s run function src:weapon/chainsaw/rip/hit
scoreboard players set @s generic.raycast.step -1