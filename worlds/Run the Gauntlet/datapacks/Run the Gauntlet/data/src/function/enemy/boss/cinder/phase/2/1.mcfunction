## Phase 2 transition frame 1
execute positioned ~ ~1 ~ run function labyrinth:generic/vfx/slash_encircle/play {"numSlashes":"3","slashMin":"0","inaccuracy":"2","yaw":"200","pitch":"110","vfx":"particle dust{color:[1.0,0.5,0.0],scale:0.5} ^ ^ ^2.0"}
effect give @s resistance 1 4 true
playsound block.fire.extinguish neutral @a[distance=..20] ~ ~ ~ 1 0 1