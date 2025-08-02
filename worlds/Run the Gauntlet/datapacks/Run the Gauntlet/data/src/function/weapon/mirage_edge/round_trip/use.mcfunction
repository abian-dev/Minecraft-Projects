## Uses round trip
tag @s add mirageedge.roundtrip.user
summon armor_stand ~ ~ ~ {Pose:{RightArm:[180f,0f,90f]},Invisible:1b,Marker:1b,DisabledSlots:4144959,Tags:["mirageedge.roundtrip"],equipment:{mainhand:{id:diamond_sword,components:{unbreakable:{},custom_model_data:{strings:["melee.mirageedge"]}}}}}
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=mirageedge.roundtrip] at @s run function src:weapon/mirage_edge/round_trip/init

# fx
execute rotated ~ 0 positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^1 0 0 0 0 1 force
playsound entity.guardian.attack neutral @a[distance=..20] ~ ~ ~ 2 2 1
playsound item.trident.riptide_1 neutral @a[distance=..20] ~ ~ ~ 1 0 1
tp @s ~ ~ ~ ~2 ~

# reset
scoreboard players set @s weapon.cd 30
scoreboard players reset @s ability.uses