# note: in development
## Wave 10
# timer
schedule clear src:spawning/wave/start/10
schedule function src:spawning/wave/start/10 1s append
scoreboard players add %gauntlet.wave.timer system.global 1
execute if score %gauntlet.wave.timer system.global matches 41.. run return run schedule clear src:spawning/wave/start/10

# middle
execute if score %gauntlet.wave.timer system.global matches 40 run return run function src:spawning/summon/entity {"entity":"warden","id":"6","pos":"0 80 0"}

# 7-eleven
execute if score %gauntlet.wave.timer system.global matches 1 run return run function src:spawning/summon/entity {"entity":"wither_skeleton","id":"7","pos":"0 70 37"}

# gamestop
execute if score %gauntlet.wave.timer system.global matches 5 run return run function src:spawning/summon/entity {"entity":"wither_skeleton","id":"7","pos":"0 70 -39"}

# shakeshack
execute if score %gauntlet.wave.timer system.global matches 10 run return run function src:spawning/summon/entity {"entity":"wither_skeleton","id":"7","pos":"-59 71 -12"}
execute if score %gauntlet.wave.timer system.global matches 15 run return run function src:spawning/summon/entity {"entity":"wither_skeleton","id":"7","pos":"-60 70 0"}

# tesla
execute if score %gauntlet.wave.timer system.global matches 20 run return run function src:spawning/summon/entity {"entity":"wither_skeleton","id":"7","pos":"57 70 3"}
execute if score %gauntlet.wave.timer system.global matches 25 run return run function src:spawning/summon/entity {"entity":"wither_skeleton","id":"7","pos":"57 70 9"}