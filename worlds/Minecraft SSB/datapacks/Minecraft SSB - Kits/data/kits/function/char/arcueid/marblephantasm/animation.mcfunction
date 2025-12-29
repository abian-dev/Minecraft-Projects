scoreboard players add @p[tag=Arcueid] kits.timer2 1
function kits:generic/vfx/slash_encircle/play {"numSlashes":"0","slashMin":"30","inaccuracy":"3","yaw":"200","pitch":"45","vfx":"particle dust{color:[0.5,0.5,0.5],scale:0.75} ^ ^ ^0.8 0 0 0 0 1 force"}

execute as @e[type=area_effect_cloud,tag=ArcueidChainsDecoration] at @s facing entity @e[tag=ArcueidChained,limit=1,sort=nearest] feet positioned ~ ~1 ~ run function kits:char/arcueid/marblephantasm/chainraycast

execute if entity @p[tag=Arcueid,scores={kits.timer2=5}] run tp @e[tag=ArcueidChained] ~ ~-1 ~
execute if entity @p[tag=Arcueid,scores={kits.timer2=6..}] run tp @e[tag=ArcueidChained] ~ ~-1 ~

execute if entity @p[tag=Arcueid,scores={kits.timer2=40..}] run tag @e[tag=ArcueidChained] remove ArcueidChained
execute if entity @p[tag=Arcueid,scores={kits.timer2=40..}] run kill @s
