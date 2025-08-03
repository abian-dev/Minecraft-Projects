## Soul stream frame 1
tp @s ~ ~ ~ facing entity @p
execute rotated ~ 0 positioned ^-0.5 ^1 ^1 run function labyrinth:generic/vfx/rotating_vertical/shine/play {"speed":"10","duration":"20","inaccuracy":"100","distance":"20","particle":"dust{color:[0.0,1.0,1.0],scale:0.5}"}
execute rotated ~ 0 positioned ^-0.5 ^1 ^1 run function labyrinth:generic/vfx/rotating_vertical/general/play {"speed":"190","duration":"20","vfx":"particle soul_fire_flame ^ ^ ^1 0 0 0 0 1 force"}
playsound block.beacon.power_select neutral @a[distance=..20] ~ ~ ~ 2 0.75 1