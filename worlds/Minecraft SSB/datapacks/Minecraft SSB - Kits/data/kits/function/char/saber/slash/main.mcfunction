tp @s[tag=SaberSlash1] ~ ~ ~ ~35 ~
tp @s[tag=SaberSlash2] ~ ~ ~ ~-35 ~

tp @s[tag=SaberSlash3,tag=SaberSlash3Flipped] ~ ~ ~ ~ ~30
tp @s[tag=SaberSlash3,tag=!SaberSlash3Flipped] ~ ~ ~ ~ ~-30

execute if entity @s[tag=SaberSlash3,x_rotation=-90] run tag @s add SaberSlash3Flipped
execute if entity @s[tag=SaberSlash3,x_rotation=-90] run tp @s ~ ~ ~ ~180 ~

execute if entity @p[tag=Saber,tag=!SaberExcalibur] if entity @s[tag=!SaberSlash3] positioned ~ ~1 ~ rotated ~90 0 run function kits:char/saber/slash/excalibur2
execute if entity @p[tag=Saber,tag=!SaberExcalibur] if entity @s[tag=SaberSlash3] positioned ^ ^1 ^1 run function kits:char/saber/slash/excaliburrot2

execute if entity @p[tag=Saber,tag=SaberExcalibur] if entity @s[tag=!SaberSlash3] positioned ~ ~1 ~ rotated ~90 0 run function kits:char/saber/slash/excalibur
execute if entity @p[tag=Saber,tag=SaberExcalibur] if entity @s[tag=SaberSlash3] positioned ^ ^1 ^1 run function kits:char/saber/slash/excaliburrot

scoreboard players set @s kits.raycastTick 0
execute if entity @p[tag=Saber,tag=!SaberExcalibur] at @s positioned ^ ^ ^1 run function kits:char/saber/slash/slashraycast
execute if entity @p[tag=Saber,tag=SaberExcalibur] at @s positioned ^ ^ ^1 run function kits:char/saber/slash/slashraycast2

execute if entity @s[tag=SaberSlash3,x_rotation=30..90,tag=SaberSlash3Flipped] run function kits:char/saber/slash/slash3end
