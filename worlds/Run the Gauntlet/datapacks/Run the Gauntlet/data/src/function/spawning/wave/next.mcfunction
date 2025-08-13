## Starts next wave
# reset
kill @e[type=#src:cleanup,predicate=src:location/gauntlet]
kill @e[type=marker,predicate=src:location/gauntlet,tag=spawning.spawner]
scoreboard players reset %gauntlet.wave.timer

# end game if all waves completed
# (gauntlet.wave = last wave + 1)
execute if score %gauntlet.wave system.global matches 11.. run return run function src:system/games/gauntlet/ingame/end

# starts current compiled wave
$function src:spawning/wave/start/$(num)
playsound entity.wither.spawn neutral @a[tag=system.gauntlet.inside] ~ ~ ~ 2 0 1
title @a[tag=system.gauntlet.inside] title [{"text":"Wave ","color":"red"},{"score":{"name":"%gauntlet.wave","objective":"system.global"},"color":"dark_red"}]

# update future compiled wave
scoreboard players add %gauntlet.wave system.global 1
execute store result storage spawning wave.num int 1 run scoreboard players get %gauntlet.wave system.global