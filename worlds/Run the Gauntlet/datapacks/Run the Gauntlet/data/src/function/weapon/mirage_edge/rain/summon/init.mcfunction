## Initialize summoned rain blade
execute rotated as @p[tag=mirageedge.rain.user] run tp @s ~ ~ ~ ~ 90

# launch time
execute store result score @s generic.math run execute if entity @e[type=area_effect_cloud,distance=..3,tag=mirageedge.rain]
scoreboard players add @s generic.math 20