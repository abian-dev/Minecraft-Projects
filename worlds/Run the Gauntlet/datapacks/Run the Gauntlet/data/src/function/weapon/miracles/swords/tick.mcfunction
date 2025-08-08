## Executed at sword of revealing light every tick
function src:weapon/miracles/swords/vfx_sword
execute if entity @s[tag=miracles.swords.spiral] run return run execute positioned ^ ^ ^2 as @e[type=!#src:non_entity,distance=..3,tag=!miracles.swords.spiral.user,team=!ally] at @s run function src:weapon/miracles/swords/spiral/hit
execute if entity @s[tag=miracles.swords.throw] run return run execute positioned ^ ^ ^2 as @e[type=!#src:non_entity,distance=..3,tag=!miracles.swords.throw.user,team=!ally] at @s run function src:weapon/miracles/swords/throw/hit