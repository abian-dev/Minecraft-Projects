## When player dies
# teleport to death pos
function system:utilities/player_status/death {"tpPlayer":"1","onDeathPos":"function none"}

# trigger cosmetics
function src:system/cosmetics/handle_death

# set spectator duration
gamemode spectator @s
scoreboard players set @s system.deathTimer 100

# run once
scoreboard players reset @s criterion.death