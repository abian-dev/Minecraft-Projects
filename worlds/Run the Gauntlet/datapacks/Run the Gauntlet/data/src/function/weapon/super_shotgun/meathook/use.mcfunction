## When meathook is used
# run trigger logic
tag @s add supershotgun.meathook.user
scoreboard players set @s generic.raycast.step 50
execute anchored eyes run function src:weapon/super_shotgun/meathook/trigger/step
scoreboard players reset @s generic.raycast.step