## Trap raycast check block collision function
execute unless block ~ ~ ~0.5 #src:passable run scoreboard players set %limitless.void.trap generic.raycast.step -1
execute unless block ~ ~ ~-0.5 #src:passable run scoreboard players set %limitless.void.trap generic.raycast.step -1
execute unless block ~0.5 ~ ~ #src:passable run scoreboard players set %limitless.void.trap generic.raycast.step -1
execute unless block ~-0.5 ~ ~ #src:passable run scoreboard players set %limitless.void.trap generic.raycast.step -1
execute unless block ~0.5 ~ ~0.5 #src:passable run scoreboard players set %limitless.void.trap generic.raycast.step -1
execute unless block ~-0.5 ~ ~0.5 #src:passable run scoreboard players set %limitless.void.trap generic.raycast.step -1
execute unless block ~0.5 ~ ~-0.5 #src:passable run scoreboard players set %limitless.void.trap generic.raycast.step -1
execute unless block ~-0.5 ~ ~-0.5 #src:passable run scoreboard players set %limitless.void.trap generic.raycast.step -1