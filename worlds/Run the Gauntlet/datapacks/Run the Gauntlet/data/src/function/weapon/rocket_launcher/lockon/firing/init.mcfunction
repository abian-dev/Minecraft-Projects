## Initialize summoned rocket
scoreboard players set @s generic.raycast.dist 15
execute at @s positioned as @p[tag=rocketlauncher.lockon.user] run tp @s ~ ~ ~
execute at @s rotated as @p[tag=rocketlauncher.lockon.user] run tp @s ~ ~1.5 ~ ~ ~