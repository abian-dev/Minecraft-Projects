effect give @s minecraft:absorption 2 1 true
playsound minecraft:item.shield.break neutral @a[distance=..50] ~ ~ ~ 5 0 1
execute at @e[type=area_effect_cloud,tag=EkkoConvergencePosition] as @e[distance=..7,type=!#kits:non_entity,tag=!Invincible,tag=!Ekko,tag=!InLabyrinth] at @s run function kits:char/ekko/convergence/effects
execute at @e[type=area_effect_cloud,tag=EkkoConvergencePosition] run function kits:generic/vfx/expanding_sphere/variant2/play {"inaccuracy":"1000","speed":"500","particle":"end_rod"}
kill @e[type=area_effect_cloud,tag=EkkoConvergencePosition]
