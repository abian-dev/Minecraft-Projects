function kits:generic/vfx/expanding_sphere/variant1/play {"accuracy":"300","speed":"200","limit":"5","particle":"dust{color:[0.000,2.000,0.000],scale:2.0}"}
particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0 0 0 0 5 force
playsound minecraft:entity.generic.explode neutral @a[distance=..50] ~ ~ ~ 2 0 1
execute as @e[distance=..9,type=!#kits:non_entity,tag=!Invincible,tag=!Doomslayer,tag=!InLabyrinth] at @s run damage @s 6 bypass:player_attack by @e[type=armor_stand,tag=DoomslayerBfg,limit=1,sort=nearest] from @p[tag=Doomslayer]
kill @s
