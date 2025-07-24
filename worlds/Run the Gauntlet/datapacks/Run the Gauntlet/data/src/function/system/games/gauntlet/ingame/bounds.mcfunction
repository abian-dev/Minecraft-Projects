## When player is out of bounds
# kb toward spawn
summon marker ~ ~ ~ {Tags:["system.player.bounds.hitRef"]}
execute as @e[type=marker,tag=system.player.bounds.hitRef,limit=1,sort=nearest] facing 0 70 0 run tp @s ^ ^ ^-0.1
damage @s 1 src:bypass_player_attack by @e[type=marker,tag=system.player.bounds.hitRef,limit=1,sort=nearest]
kill @e[type=marker,tag=system.player.bounds.hitRef,limit=1,sort=nearest]

# message
tellraw @s [{"text":"Out of bounds.","color":"red"}]