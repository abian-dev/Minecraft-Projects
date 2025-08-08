## When player wins
# message
tellraw @a [{"selector":"@s","color":"yellow"},{"text":" has won the game!","color":"gold"}]
tellraw @s [{"text":"You win!","color":"green"}]

# reset
function src:system/games/pvp/reset_local