## Executed at excalibur light sigil every tick
# vfx
tp @s ~ ~0.05 ~ ~10 ~
particle dust{color:[1.0,1.0,0.0],scale:0.3} ^ ^-0.6 ^ 0 0 0 0 1 force
particle dust{color:[1.0,1.0,0.0],scale:0.3} ^ ^-0.4 ^ 0 0 0 0 1 force
particle dust{color:[1.0,1.0,0.0],scale:0.3} ^ ^-0.2 ^ 0 0 0 0 1 force
particle dust{color:[1.0,1.0,0.0],scale:0.5} ^ ^0.0 ^ 0 0 0 0 1 force
particle dust{color:[1.0,1.0,0.0],scale:0.3} ^ ^0.1 ^ 0 0 0 0 1 force

particle dust{color:[1.0,1.0,0.0],scale:0.4} ^-0.1 ^0.0 ^ 0 0 0 0 1 force
particle dust{color:[1.0,1.0,0.0],scale:0.3} ^-0.2 ^0.0 ^ 0 0 0 0 1 force
particle dust{color:[1.0,1.0,0.0],scale:0.4} ^0.1 ^0.0 ^ 0 0 0 0 1 force
particle dust{color:[1.0,1.0,0.0],scale:0.3} ^0.2 ^0.0 ^ 0 0 0 0 1 force

# automatic despawn duration
# execute unless score @s generic.math matches 40.. run scoreboard players add @s generic.math 1
# execute if score @s generic.math matches 40.. run kill @s