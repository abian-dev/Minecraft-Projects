## At the end of jce
# damage
execute as @e[type=!#src:non_entity,distance=..15,tag=!yamato.jce.user,team=!ally] at @s run damage @s 20 src:bypass_player_attack by @p[tag=yamato.jce.user]

# fx
function src:generic/vfx/expanding_sphere/variant1/play {"accuracy":"200","speed":"300","limit":"10","particle":"flash"}
playsound block.glass.break neutral @a[distance=..20] ~ ~ ~ 2 0 1

# reset
tag @s add yamato.jce.curr
execute unless entity @e[type=area_effect_cloud,tag=!yamato.jce.curr,tag=yamato.jce] run tag @a[tag=yamato.jce.user] remove yamato.jce.user
kill @s