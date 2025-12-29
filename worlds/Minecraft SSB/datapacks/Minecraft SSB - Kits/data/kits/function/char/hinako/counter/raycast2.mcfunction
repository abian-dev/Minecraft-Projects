scoreboard players add @s kits.raycastTick3 1
execute unless block ^0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick3 3333
execute unless block ^-0.71 ^0.01 ^ #kits:passable run scoreboard players set @s kits.raycastTick3 3333
execute unless block ~ ~ ~ #kits:passable run scoreboard players set @s kits.raycastTick3 2222
execute unless block ^ ^ ^0.71 #kits:passable run scoreboard players set @s kits.raycastTick3 2222
execute unless block ^ ^0.71 ^ #kits:passable run scoreboard players set @s kits.raycastTick3 2222

execute as @s[scores={kits.raycastTick3=2222}] positioned ^ ^ ^ run tp @s ^ ^ ^-0.5 facing entity @e[type=!#kits:non_entity,tag=!Invincible,tag=!Hinako,tag=!InLabyrinth,limit=1,sort=nearest]
execute as @s[scores={kits.raycastTick3=3333}] positioned ^ ^ ^ run tp @s ~ ~ ~ facing entity @e[type=!#kits:non_entity,tag=!Invincible,tag=!Hinako,tag=!InLabyrinth,limit=1,sort=nearest]
execute if entity @s[scores={kits.raycastTick3=5}] run tp @s ~ ~ ~ facing entity @e[type=!#kits:non_entity,tag=!Invincible,tag=!Hinako,tag=!InLabyrinth,limit=1,sort=nearest]
execute as @s[scores={kits.raycastTick3=..4}] rotated ~ 0 positioned ^ ^ ^0.5 run function kits:char/hinako/counter/raycast2
