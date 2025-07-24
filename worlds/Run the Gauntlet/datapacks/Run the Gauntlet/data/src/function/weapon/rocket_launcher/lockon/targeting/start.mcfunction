## Initiates lock-on logic
tag @s add rocketlauncher.lockon.user
scoreboard players set @s generic.raycast.step 50
execute anchored eyes run function src:weapon/rocket_launcher/lockon/targeting/step
scoreboard players reset @s generic.raycast.step