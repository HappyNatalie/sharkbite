#this function seems really stupid for checking a lot of damage events twice but certian entity on entity damage events only give a HurtTime of 9 due to processing jank so this is the only way I could find to get it to work better. (We would be checking HurtTime every tick anyway so it's not a massive performence loss)
execute store result score @s sharkbite.tracking run data get entity @s HurtTime 1
execute if score @s sharkbite.tracking matches 9.. run function sharkbite:when_hurt/event
