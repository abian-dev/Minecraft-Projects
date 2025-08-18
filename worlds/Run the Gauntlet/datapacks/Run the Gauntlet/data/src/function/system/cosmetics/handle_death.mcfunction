## Plays cosmetic effects when a player dies
tag @s add system.cosmetics.death
execute on attacker run function src:system/cosmetics/id_dispatch/kill_effect
execute on attacker run function src:system/cosmetics/id_dispatch/kill_message
tag @s remove system.cosmetics.death