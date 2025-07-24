## When player dies
# teleport to death pos
function src:system/util/death {"tpPlayer":"1","onDeathPos":"function none"}

# set spectator duration
gamemode spectator @s
scoreboard players set @s system.deathTimer 20

# run once
scoreboard players reset @s criterion.death