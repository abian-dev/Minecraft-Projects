## Executed at user every tick
# rapid slash toward marker
execute as @e[type=!#src:non_entity,distance=..5,tag=!yamato.rapid.user,team=!ally] at @s run function src:weapon/yamato/rapid_slash/hit
execute facing entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=yamato.rapidslash.curr] feet run function src:weapon/yamato/rapid_slash/dash

# fx
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=yamato.rapidslash.vfx] at @s run function src:weapon/yamato/rapid_slash/vfx/play
playsound entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 1 1 1
playsound item.trident.return neutral @a[distance=..20] ~ ~ ~ 1 2 1