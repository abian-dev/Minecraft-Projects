## Wave 4
# timer
schedule clear src:spawning/wave/start/4
schedule function src:spawning/wave/start/4 5t append
scoreboard players add %gauntlet.wave.timer system.global 1
execute if score %gauntlet.wave.timer system.global matches 14.. run return run schedule clear src:spawning/wave/start/4

# 7-eleven
execute if score %gauntlet.wave.timer system.global matches 1 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"-5 70 31"}
execute if score %gauntlet.wave.timer system.global matches 2 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"0 70 37"}
execute if score %gauntlet.wave.timer system.global matches 3 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"5 70 31"}

# gamestop
execute if score %gauntlet.wave.timer system.global matches 4 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"-5 70 -39"}
execute if score %gauntlet.wave.timer system.global matches 5 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"0 70 -31"}
execute if score %gauntlet.wave.timer system.global matches 6 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"5 70 -39"}

# cafe
execute if score %gauntlet.wave.timer system.global matches 7 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"-52 70 49"}

# shakeshack
execute if score %gauntlet.wave.timer system.global matches 8 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"-59 71 -12"}
execute if score %gauntlet.wave.timer system.global matches 9 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"-60 70 0"}

# drugs
execute if score %gauntlet.wave.timer system.global matches 10 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"53 70 -44"}

# tesla
execute if score %gauntlet.wave.timer system.global matches 11 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"57 70 3"}
execute if score %gauntlet.wave.timer system.global matches 12 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"57 70 9"}

# td bank
execute if score %gauntlet.wave.timer system.global matches 13 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"57 70 49"}