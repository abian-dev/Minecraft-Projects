## Rain sunspear on explosion
# summon falling spears
kill @e[type=area_effect_cloud,tag=labyrinth.cinder.sunspearFalling]
function labyrinth:generic/functions/random_pos/start {"itt":"12","yaw":"180","pitch":"20","distMin":"0","distMax":"30","atPos":"function labyrinth:mobs/bosses/cinder/range/sunspear/falling/summon"}

# fx
function labyrinth:generic/vfx/expanding_cylinder/play {"accuracy":"400","speed":"200","limit":"10","height":"1","particle":"dust{color:[1.0,1.0,0.0],scale:1.0}"}
particle flash{color:[1.0,1.0,1.0,1.0]} ~ ~ ~ 0 0 0 0 1 force
playsound entity.firework_rocket.large_blast neutral @a[distance=..40] ~ ~ ~ 2 0 1
playsound entity.lightning_bolt.thunder neutral @a[distance=..40] ~ ~ ~ 0.2 2 0.2