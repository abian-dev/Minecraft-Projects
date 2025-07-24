## Executed at bullet every tick
# vfx
execute if entity @s[tag=ballista.destroyer.low] run function src:generic/vfx/slash_crescent/play {"concavity":"400","thickness":"5","accuracy":"30","yaw":"90","pitch":"0","distance":"4","particle":"dust{color:[1.0,0.6,0.0],scale:1.0}"}
execute if entity @s[tag=ballista.destroyer.mid] run function src:generic/vfx/slash_crescent/play {"concavity":"400","thickness":"5","accuracy":"30","yaw":"90","pitch":"0","distance":"5","particle":"dust{color:[1.0,0.5,0.0],scale:1.0}"}
execute if entity @s[tag=ballista.destroyer.high] run function src:generic/vfx/slash_crescent/play {"concavity":"400","thickness":"5","accuracy":"30","yaw":"90","pitch":"0","distance":"6","particle":"dust{color:[1.0,0.4,0.0],scale:1.0}"}

# limit travel distance
scoreboard players remove @s generic.raycast.dist 1
execute if score @s generic.raycast.dist matches -1..1 run return run function src:weapon/ballista/destroyer/collide

# step = speed
# run slowcast
scoreboard players set @s generic.raycast.step 5
function src:weapon/ballista/destroyer/step
scoreboard players reset @s generic.raycast.step