## When player selects melee class
execute as @p run function src:system/ui/player/close
playsound entity.experience_orb.pickup neutral @p ~ ~ ~ 1 1 1
tellraw @p [{"text":"You selected Melee!","color":"green"}]

tag @p add class.melee
tag @p remove class.magic
tag @p remove class.ranged