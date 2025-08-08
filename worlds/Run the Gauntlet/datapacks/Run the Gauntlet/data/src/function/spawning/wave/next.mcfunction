## Starts next wave
# end game if all waves completed
execute if score %gauntlet.wave system.global matches 11.. run function src:system/games/gauntlet/ingame/end

# starts current compiled wave
$function src:spawning/wave/start/$(num)
playsound entity.wither.spawn neutral @a[tag=system.gauntlet.inside] ~ ~ ~ 2 0 1
title @a[tag=system.gauntlet.inside] title [{"text":"Wave ","color":"red"},{"score":{"name":"%gauntlet.wave","objective":"system.global"},"color":"dark_red"}]

# update future compiled wave
scoreboard players add %gauntlet.wave system.global 1
execute store result storage spawning wave.num int 1 run scoreboard players get %gauntlet.wave system.global