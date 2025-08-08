## When player loses
# message
tellraw @a [{"selector":"@s","color":"red"},{"text":" defeated!","color":"dark_red"}]
tellraw @s [{"text":"You lost. Now spectating.","color":"red"}]

# reset
function src:system/games/pvp/reset_local