## Makes spawned entity track nearby player
damage @s 0 bypass:player_attack_no_impact by @e[type=marker,limit=1,sort=nearest,tag=labyrinth.spawner] from @p
tag @s remove labyrinth.newEntity