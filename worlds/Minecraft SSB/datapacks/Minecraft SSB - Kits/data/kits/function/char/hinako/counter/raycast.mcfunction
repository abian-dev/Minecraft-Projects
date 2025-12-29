scoreboard players add @s kits.raycastTick2 1
execute if entity @e[distance=..3,type=!#kits:non_entity,tag=!Invincible,tag=!Hinako,tag=!InLabyrinth] run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 2222
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick2 3333
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick2 3333
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick2 3333

execute as @s[scores={kits.raycastTick2=21..}] run scoreboard players set @s kits.raycastTick3 0
execute as @s[scores={kits.raycastTick2=21..}] positioned ^ ^ ^ as @e[distance=..5,type=!#kits:non_entity,type=!minecraft:player,tag=!Invincible,tag=!Hinako,tag=!InLabyrinth,limit=1,sort=nearest] at @s run effect give @s minecraft:weakness 1 9 true
execute as @s[scores={kits.raycastTick2=21..}] positioned ^ ^ ^ positioned as @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Hinako,tag=!InLabyrinth,limit=1,sort=nearest] facing entity @s feet rotated ~ 0 run function kits:char/hinako/counter/raycast2
execute as @s[scores={kits.raycastTick2=21..2222}] positioned ^ ^ ^ unless entity @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Hinako,tag=!InLabyrinth] run tp @s ~ ~ ~
execute as @s[scores={kits.raycastTick2=3333}] positioned ^ ^ ^ unless entity @e[distance=..5,type=!#kits:non_entity,tag=!Invincible,tag=!Hinako,tag=!InLabyrinth] run tp @s ^ ^ ^-0.5

execute as @s[scores={kits.raycastTick2=..20}] rotated ~ 0 positioned ^ ^ ^0.5 run function kits:char/hinako/counter/raycast