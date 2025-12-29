function labyrinth:mobs/bosses/cinder/triggers/stop_music

bossbar remove minecraft:labyrinth.bossbar.cinder
execute positioned as @e[type=item,predicate=labyrinth:generic/boss_defeat,sort=nearest,limit=1] run function labyrinth:generic/vfx/expanding_cylinder/play {"accuracy":"200","speed":"30","limit":"5","height":"1000","particle":"flame"}
title @s title {"text":"LORD OF CINDER FALLEN","bold":true,"italic":true,"color":"red"}
playsound minecraft:ui.toast.challenge_complete neutral @s ~ ~ ~ 10 0.75 1
kill @e[type=item,predicate=labyrinth:generic/boss_defeat,predicate=labyrinth:zones/boss/cinder]
