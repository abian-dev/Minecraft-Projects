particle minecraft:cloud ~ ~ ~ 0.25 0 0.25 0.25 20 force
playsound minecraft:block.gravel.step neutral @a[distance=..30] ~ ~ ~ 3 1 1
playsound minecraft:entity.player.attack.strong neutral @a[distance=..20] ~ ~ ~ 2 0 1

scoreboard players set @s kits.raycastTick 0
execute at @s positioned ~ ~1.5 ~ run function kits:char/saber/strikeair/raycast
execute at @s positioned ^ ^1 ^2 as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Saber,tag=!InLabyrinth] at @s run function kits:char/saber/strikeair/damage

attribute @s minecraft:attack_speed modifier remove attackspeed.strikeair.saber
scoreboard players set @s kits.ability2CD 0
tag @s remove SaberStrikeAirCharge