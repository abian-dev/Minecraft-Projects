scoreboard players add @s[scores={kits.ability3CD=..4}] kits.ability3CD 1
function kits:char/arcueid/marblephantasm/magiccircuit {magic:5}
schedule function kits:char/arcueid/vacuum/comboreset 2s replace
execute if score @s kits.ability3CD matches 5.. run playsound minecraft:entity.player.hurt_sweet_berry_bush neutral @a[distance=..30] ~ ~ ~ 5 0 1
execute if score @s kits.ability3CD matches 5.. run scoreboard players set @s kits.raycastTick 0
execute if score @s kits.ability3CD matches 5.. at @s positioned ~ ~1.5 ~ run function kits:char/arcueid/vacuum/attackraycast
execute if score @s kits.ability3CD matches 5.. run scoreboard players set @s kits.ability3CD 0