## Uses judgement cut
tag @s add yamato.judgementcut.user
attribute @s gravity modifier add gravity.yamato.judgementcut -1 add_multiplied_total
function src:weapon/yamato/judgement_cut/targeting/start

# fx
execute rotated ~ 0 positioned ~ ~1 ~ run function src:generic/vfx/slash_crescent/play {"concavity":"100","thickness":"2","accuracy":"50","yaw":"90","pitch":"340","distance":"2","particle":"dust{color:[0.0,0.8,1.0],scale:0.5}"}
particle flash ^ ^1 ^1 0 0 0 0 1 force
playsound entity.illusioner.prepare_blindness neutral @a[distance=..20] ~ ~ ~ 1 1 1
playsound entity.zombie_villager.converted neutral @a[distance=..20] ~ ~ ~ 1 2 1

# reset
scoreboard players remove @s cost.stamina 10
scoreboard players set @s in.rmb.holdTime 0
scoreboard players set @s weapon.cd2 10

scoreboard players add @s ability.uses 1
execute if score @s ability.uses matches 4.. run scoreboard players set @s weapon.cd2 60
execute if score @s ability.uses matches 4.. run scoreboard players reset @s ability.uses