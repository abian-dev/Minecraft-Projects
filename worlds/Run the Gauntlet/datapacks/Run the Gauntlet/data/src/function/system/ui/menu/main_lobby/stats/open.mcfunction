## Open stats page
execute as @p run function src:system/ui/player/close
tellraw @p [{"text":"---------------","color":"gray"}]
tellraw @p [{"selector":"@p","color":"green"}]
tellraw @p [{"text":"Stats WIP","color":"white"}]
tellraw @p [{"text":"---------------","color":"gray"}]