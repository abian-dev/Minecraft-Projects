playsound minecraft:entity.breeze.shoot neutral @a[distance=..30] ~ ~ ~ 5 0.5 1
playsound minecraft:entity.player.attack.knockback neutral @a[distance=..30] ~ ~ ~ 5 0 1
particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0 1 force
execute positioned ^ ^1.5 ^ rotated ~ 0 run function kits:generic/vfx/slash_circle/play {"radius":"7","completion":"50","thickness":"2","accuracy":"70","acceleration":"5","speed":"0","pitch":"240","particle":"dust{color:[1.500,0.000,0.000],scale:1.5}"}
execute positioned ^ ^1.5 ^ rotated ~ 0 run function kits:generic/vfx/slash_circle/play {"radius":"7","completion":"50","thickness":"2","accuracy":"70","acceleration":"5","speed":"0","pitch":"240","particle":"dust{color:[0.000,0.000,0.000],scale:2.0}"}

function kits:char/sekiro/spiritemblems/cost {Emblems:3}
execute positioned ^ ^1.5 ^4 as @e[distance=..4,type=!#kits:non_entity,tag=!Invincible,tag=!Sekiro,tag=!InLabyrinth] at @s run function kits:char/sekiro/mortaldraw/damage
