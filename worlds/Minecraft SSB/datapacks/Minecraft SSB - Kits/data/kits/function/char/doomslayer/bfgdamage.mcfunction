#function kits:char/damage1
damage @s 0.3 bypass:player_attack_no_impact by @e[type=armor_stand,tag=DoomslayerBfg,limit=1,sort=nearest] from @p[tag=Doomslayer]
effect give @s minecraft:slowness 1 0 true
particle sneeze ~ ~1 ~ 0 0 0 0.05 3 force
execute at @e[type=armor_stand,tag=DoomslayerBfg] run playsound minecraft:entity.bee.hurt neutral @a[distance=..10] ~ ~ ~ 1 0.5 1
execute at @s positioned ~ ~0.5 ~ facing entity @e[type=armor_stand,tag=DoomslayerBfg,limit=1,sort=nearest] eyes positioned ~ ~1 ~ run function kits:char/doomslayer/doomslayerpassive2

scoreboard players add @p[tag=Doomslayer,scores={kits.ability7CD=..99}] kits.ability7CD 1