## Open home page
function src:system/ui/menu/main_lobby/home/mask
data modify storage system.ui current set from storage system.ui mask
execute on passengers run data modify entity @s data.page.mask set value "function src:system/ui/menu/main_lobby/home/mask"