## Soul of cinder moveset
# no ai
data merge entity @s[tag=!labyrinth.cinder.noAi] {NoAI:1b}
tag @s add labyrinth.cinder.noAi

# phase transitions
execute if score @s labyrinth.math matches -2 run return run function labyrinth:generic/functions/frame_step/play {"frameRate":"3","maxFrames":"10","filepath":"labyrinth:mobs/bosses/cinder/phase/2/","end":"function labyrinth:mobs/bosses/cinder/phase/2/end_trans"}

# moveset id list
## phase 1
# close
execute if score @s labyrinth.math matches 1 run return run function labyrinth:generic/functions/frame_step/play {"frameRate":"1","maxFrames":"29","filepath":"labyrinth:mobs/bosses/cinder/close/spin/frames/","end":"function labyrinth:mobs/bosses/cinder/end_move"}
execute if score @s labyrinth.math matches 2 run return run function labyrinth:generic/functions/frame_step/play {"frameRate":"1","maxFrames":"7","filepath":"labyrinth:mobs/bosses/cinder/close/poke/","end":"function labyrinth:mobs/bosses/cinder/end_move"}
execute if score @s labyrinth.math matches 3 run return run function labyrinth:generic/functions/frame_step/play {"frameRate":"1","maxFrames":"7","filepath":"labyrinth:mobs/bosses/cinder/close/smash/","end":"function labyrinth:mobs/bosses/cinder/end_move"}
execute if score @s labyrinth.math matches 4 run return run function labyrinth:generic/functions/frame_step/play {"frameRate":"1","maxFrames":"7","filepath":"labyrinth:mobs/bosses/cinder/close/slash_left/","end":"function labyrinth:mobs/bosses/cinder/end_move"}
execute if score @s labyrinth.math matches 5 run return run function labyrinth:generic/functions/frame_step/play {"frameRate":"1","maxFrames":"7","filepath":"labyrinth:mobs/bosses/cinder/close/slash_right/","end":"function labyrinth:mobs/bosses/cinder/end_move"}

# range
execute if score @s labyrinth.math matches 7 run return run function labyrinth:generic/functions/frame_step/play {"frameRate":"2","maxFrames":"10","filepath":"labyrinth:mobs/bosses/cinder/range/soulmass/frames/","end":"function labyrinth:mobs/bosses/cinder/end_move"}
execute if score @s labyrinth.math matches 8 run return run function labyrinth:generic/functions/frame_step/play {"frameRate":"2","maxFrames":"20","filepath":"labyrinth:mobs/bosses/cinder/range/stream/frames/","end":"function labyrinth:mobs/bosses/cinder/end_move"}
execute if score @s labyrinth.math matches 9..10 run return run function labyrinth:generic/functions/frame_step/play {"frameRate":"2","maxFrames":"10","filepath":"labyrinth:mobs/bosses/cinder/range/spinning_slash/frames/","end":"function labyrinth:mobs/bosses/cinder/end_move"}
execute if score @s labyrinth.math matches 11..12 run return run function labyrinth:generic/functions/frame_step/play {"frameRate":"1","maxFrames":"10","filepath":"labyrinth:mobs/bosses/cinder/range/thrust/","end":"function labyrinth:mobs/bosses/cinder/end_move"}

## phase 2: additional moves
# close
execute if score @s labyrinth.math matches 6 run return run function labyrinth:generic/functions/frame_step/play {"frameRate":"1","maxFrames":"50","filepath":"labyrinth:mobs/bosses/cinder/close/combo/","end":"function labyrinth:mobs/bosses/cinder/end_move"}

# range
execute if score @s labyrinth.math matches 13..15 run return run function labyrinth:generic/functions/frame_step/play {"frameRate":"1","maxFrames":"7","filepath":"labyrinth:mobs/bosses/cinder/range/leaping_slash/","end":"function labyrinth:mobs/bosses/cinder/end_move"}
execute if score @s labyrinth.math matches 16..17 run return run function labyrinth:generic/functions/frame_step/play {"frameRate":"2","maxFrames":"10","filepath":"labyrinth:mobs/bosses/cinder/range/sunspear/rain/","end":"function labyrinth:mobs/bosses/cinder/end_move"}
execute if score @s labyrinth.math matches 18..19 run return run function labyrinth:generic/functions/frame_step/play {"frameRate":"2","maxFrames":"10","filepath":"labyrinth:mobs/bosses/cinder/range/sunspear/throw/","end":"function labyrinth:mobs/bosses/cinder/end_move"}