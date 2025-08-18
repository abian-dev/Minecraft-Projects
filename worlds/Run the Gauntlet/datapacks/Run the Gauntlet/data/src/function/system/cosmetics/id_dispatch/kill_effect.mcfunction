## Plays the appropriate kill effect based on the killer’s ID
# default
execute unless score @s cosmetics.killFx.id matches 0.. as @p[tag=system.cosmetics.death] at @s run function src:system/cosmetics/kill_effect/blood

# mappings