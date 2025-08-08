## Executed at user every tick
# dash toward marker
execute as @e[type=!#src:non_entity,distance=..5,tag=!miracles.holy.user,team=!ally] at @s run function src:weapon/miracles/holy/hit
execute facing entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=miracles.holy.curr] feet run function src:weapon/miracles/holy/dash

# fx
execute positioned ~ ~1 ~ run function src:generic/vfx/slash_scatter/play {"inaccuracy":"0.2","slashLength":"15","slashScatter":"10","slashNum":"3","vfx":"particle dust{color:[1.0,1.0,0.0],scale:0.5} ~ ~ ~ 0 0 0 0 1 force"}
execute positioned ~ ~1 ~ run function src:weapon/miracles/holy/page/summon
playsound entity.player.attack.sweep neutral @a[distance=..20] ~ ~ ~ 1 2 1
playsound item.book.page_turn neutral @a[distance=..20] ~ ~ ~ 2 1 1