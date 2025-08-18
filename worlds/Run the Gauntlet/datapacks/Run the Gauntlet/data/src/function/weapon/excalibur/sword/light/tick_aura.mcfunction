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
scoreboard players add @s generic.z 1
execute if score @s generic.z matches 5.. run function src:generic/functions/random_pos/start {"itt":"1","yaw":"180","pitch":"45","distMin":"6","distMax":"8","atPos":"function src:weapon/excalibur/sword/light/summon_sigil"}
execute if score @s generic.z matches 5.. run scoreboard players reset @s generic.z

# follow user
tag @s add excalibur.sword.light.aura.curr
scoreboard players operation %excalibur.sword.light.aura.search user.id = @s user.id
execute as @a[tag=excalibur.sword.user] at @s if score @s user.id = %excalibur.sword.light.aura.search user.id as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=excalibur.sword.light.aura.curr] run tp @s ~ ~ ~
tag @s remove excalibur.sword.light.aura.curr
scoreboard players reset %excalibur.sword.light.aura.search

# automatic despawn duration
execute unless score @s generic.math matches 40.. run scoreboard players add @s generic.math 1
execute if score @s generic.math matches 40.. run kill @s