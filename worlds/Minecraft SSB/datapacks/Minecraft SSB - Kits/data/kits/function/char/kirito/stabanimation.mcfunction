scoreboard players add @s kits.raycastTick3 1
function kits:char/kirito/sliceparticles3
playsound minecraft:entity.witch.throw neutral @a[distance=..15] ~ ~ ~ 10 0.5 1
execute positioned ~ ~ ~ as @e[distance=..2,type=!#kits:non_entity,tag=!Invincible,tag=!Kirito,tag=!InLabyrinth,tag=!KiritoStabbed] at @s run function kits:char/kirito/stabdamage
execute as @s[scores={kits.raycastTick3=..7}] positioned ^ ^ ^1 run function kits:char/kirito/stabanimation
