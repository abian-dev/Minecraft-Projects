## Wave 9
# timer
schedule clear src:spawning/wave/start/9
schedule function src:spawning/wave/start/9 1s append
scoreboard players add %gauntlet.wave.timer system.global 1
execute if score %gauntlet.wave.timer system.global matches 41.. run return run schedule clear src:spawning/wave/start/9

# middle
execute if score %gauntlet.wave.timer system.global matches 40 run return run function src:spawning/summon/entity {"entity":"phantom","id":"6","pos":"0 80 0"}

# 7-eleven
execute if score %gauntlet.wave.timer system.global matches 1 run return run function src:spawning/summon/entity {"entity":"zombie","id":"4","pos":"-5 70 31"}
execute if score %gauntlet.wave.timer system.global matches 20 run return run function src:spawning/summon/entity {"entity":"skeleton","id":"5","pos":"0 70 37"}
execute if score %gauntlet.wave.timer system.global matches 30 run return run function src:spawning/summon/entity {"entity":"wither_skeleton","id":"7","pos":"5 70 31"}

# gamestop
execute if score %gauntlet.wave.timer system.global matches 2 run return run function src:spawning/summon/entity {"entity":"zombie","id":"4","pos":"-5 70 -39"}
execute if score %gauntlet.wave.timer system.global matches 21 run return run function src:spawning/summon/entity {"entity":"skeleton","id":"5","pos":"0 70 -31"}
execute if score %gauntlet.wave.timer system.global matches 31 run return run function src:spawning/summon/entity {"entity":"wither_skeleton","id":"7","pos":"5 70 -39"}

# cafe
execute if score %gauntlet.wave.timer system.global matches 3 run return run function src:spawning/summon/entity {"entity":"zombie","id":"4","pos":"-52 70 49"}

# shakeshack
execute if score %gauntlet.wave.timer system.global matches 4 run return run function src:spawning/summon/entity {"entity":"zombie","id":"4","pos":"-59 71 -12"}
execute if score %gauntlet.wave.timer system.global matches 22 run return run function src:spawning/summon/entity {"entity":"skeleton","id":"5","pos":"-60 70 0"}

# drugs
execute if score %gauntlet.wave.timer system.global matches 5 run return run function src:spawning/summon/entity {"entity":"zombie","id":"4","pos":"53 70 -44"}

# tesla
execute if score %gauntlet.wave.timer system.global matches 6 run return run function src:spawning/summon/entity {"entity":"zombie","id":"4","pos":"57 70 3"}
execute if score %gauntlet.wave.timer system.global matches 23 run return run function src:spawning/summon/entity {"entity":"skeleton","id":"5","pos":"57 70 9"}

# td bank
execute if score %gauntlet.wave.timer system.global matches 7 run return run function src:spawning/summon/entity {"entity":"zombie","id":"4","pos":"57 70 49"}