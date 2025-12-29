execute as @p[tag=Saber] at @s run function kits:char/saber/strikeair/particles2

execute as @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Saber,tag=!InLabyrinth] at @s run function kits:char/saber/strikeair/airdamage
execute positioned ~ ~1.5 ~ run function kits:char/saber/strikeair/boom
execute if entity @p[tag=Saber,tag=SaberExcalibur] run particle flash{color:[1.000,0.867,0.000,1.00]} ~ ~1.5 ~ 0 0 0 0 0 force
tp @s ^ ^ ^1.5
