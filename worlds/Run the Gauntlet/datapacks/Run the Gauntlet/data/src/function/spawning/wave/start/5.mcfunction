## Wave 5
# timer
schedule clear src:spawning/wave/start/5
schedule function src:spawning/wave/start/5 5t append
scoreboard players add %gauntlet.wave.timer system.global 1
execute if score %gauntlet.wave.timer system.global matches 27.. run return run schedule clear src:spawning/wave/start/5

# 7-eleven
execute if score %gauntlet.wave.timer system.global matches 1 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"-5 70 31"}
execute if score %gauntlet.wave.timer system.global matches 2 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"0 70 37"}
execute if score %gauntlet.wave.timer system.global matches 20 run return run function src:spawning/summon/entity {"entity":"creeper","id":"3","pos":"5 70 31"}

# gamestop
execute if score %gauntlet.wave.timer system.global matches 3 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"-5 70 -39"}
execute if score %gauntlet.wave.timer system.global matches 4 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"0 70 -31"}
execute if score %gauntlet.wave.timer system.global matches 21 run return run function src:spawning/summon/entity {"entity":"creeper","id":"3","pos":"5 70 -39"}

# cafe
execute if score %gauntlet.wave.timer system.global matches 5 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"-52 70 49"}
execute if score %gauntlet.wave.timer system.global matches 22 run return run function src:spawning/summon/entity {"entity":"creeper","id":"3","pos":"-58 70 53"}

# shakeshack
execute if score %gauntlet.wave.timer system.global matches 6 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"-59 71 -12"}
execute if score %gauntlet.wave.timer system.global matches 23 run return run function src:spawning/summon/entity {"entity":"creeper","id":"3","pos":"-60 70 0"}

# drugs
execute if score %gauntlet.wave.timer system.global matches 7 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"53 70 -44"}
execute if score %gauntlet.wave.timer system.global matches 24 run return run function src:spawning/summon/entity {"entity":"creeper","id":"3","pos":"73 76 -44"}

# tesla
execute if score %gauntlet.wave.timer system.global matches 8 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"57 70 3"}
execute if score %gauntlet.wave.timer system.global matches 25 run return run function src:spawning/summon/entity {"entity":"creeper","id":"3","pos":"57 70 9"}

# td bank
execute if score %gauntlet.wave.timer system.global matches 9 run return run function src:spawning/summon/entity {"entity":"zombie","id":"1","pos":"57 70 49"}
execute if score %gauntlet.wave.timer system.global matches 26 run return run function src:spawning/summon/entity {"entity":"creeper","id":"3","pos":"66 70 40"}