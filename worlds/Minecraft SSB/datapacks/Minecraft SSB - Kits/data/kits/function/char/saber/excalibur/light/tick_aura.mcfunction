## Executed at excalibur light radiance every tick
# vfx: circles
tp @s ~ ~ ~ ~10 ~
particle dust{color:[1,1,0],scale:0.5} ^2.0 ^ ^0.0 0 0 0 0 1 force
particle dust{color:[1,1,0],scale:0.5} ^1.414 ^ ^1.414 0 0 0 0 1 force
particle dust{color:[1,1,0],scale:0.5} ^0.0 ^ ^2.0 0 0 0 0 1 force
particle dust{color:[1,1,0],scale:0.5} ^-1.414 ^ ^1.414 0 0 0 0 1 force
particle dust{color:[1,1,0],scale:0.5} ^-2.0 ^ ^0.0 0 0 0 0 1 force
particle dust{color:[1,1,0],scale:0.5} ^-1.414 ^ ^-1.414 0 0 0 0 1 force
particle dust{color:[1,1,0],scale:0.5} ^-0.0 ^ ^-2.0 0 0 0 0 1 force
particle dust{color:[1,1,0],scale:0.5} ^1.414 ^ ^-1.414 0 0 0 0 1 force

particle dust{color:[1,1,0],scale:0.5} ^4.0 ^ ^0.0 0 0 0 0 1 force
particle dust{color:[1,1,0],scale:0.5} ^2.828 ^ ^2.828 0 0 0 0 1 force
particle dust{color:[1,1,0],scale:0.5} ^0.0 ^ ^4.0 0 0 0 0 1 force
particle dust{color:[1,1,0],scale:0.5} ^-2.828 ^ ^2.828 0 0 0 0 1 force
particle dust{color:[1,1,0],scale:0.5} ^-4.0 ^ ^0.0 0 0 0 0 1 force
particle dust{color:[1,1,0],scale:0.5} ^-2.828 ^ ^-2.828 0 0 0 0 1 force
particle dust{color:[1,1,0],scale:0.5} ^-0.0 ^ ^-4.0 0 0 0 0 1 force
particle dust{color:[1,1,0],scale:0.5} ^2.828 ^ ^-2.828 0 0 0 0 1 force

# vfx: sigils
scoreboard players add @s kits.timer 1
execute if score @s kits.timer matches 5.. run function kits:generic/functions/random_pos/start {"itt":"1","yaw":"180","pitch":"45","distMin":"6","distMax":"8","atPos":"function kits:char/saber/excalibur/light/summon_sigil"}
execute if score @s kits.timer matches 5.. run scoreboard players reset @s kits.timer

# follow user
tag @s add SaberExcaliburSword.light.aura.curr
execute as @a[tag=SaberExcaliburUse] at @s as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=SaberExcaliburSword.light.aura.curr] run tp @s ~ ~ ~
tag @s remove SaberExcaliburSword.light.aura.curr

# automatic despawn duration
execute unless score @s kits.timer2 matches 40.. run scoreboard players add @s kits.timer2 1
execute if score @s kits.timer2 matches 40.. run kill @s