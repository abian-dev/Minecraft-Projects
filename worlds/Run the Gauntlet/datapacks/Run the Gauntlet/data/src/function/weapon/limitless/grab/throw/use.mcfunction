## Uses throw
execute rotated ~ 0 positioned ^ ^1 ^5 as @e[type=!#src:non_entity,distance=..5,tag=!limitless.grab.user,team=!ally] at @s run function src:weapon/limitless/grab/throw/hit
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["limitless.grab.throw"],Duration:20}

# fx
execute rotated ~ 0 positioned ~ ~1 ~ run function src:generic/vfx/slash_crescent/play {"concavity":"300","thickness":"5","accuracy":"50","yaw":"90","pitch":"0","distance":"3","particle":"dust{color:[1.0,1.0,1.0],scale:0.5}"}
playsound entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 2 0 1
playsound item.trident.riptide_1 neutral @a[distance=..20] ~ ~ ~ 1 0 1