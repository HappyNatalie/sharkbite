#checks for false positives (aka taking fall damage after being damaged by an entity)
#this is needed bc execute on attacker remembers the player for longer than 1 tick
execute store result score %temp% sharkbite.prv_timestamp run data get entity @s HurtByTimestamp
execute unless score @s sharkbite.prv_timestamp = %temp% sharkbite.prv_timestamp unless score %temp% sharkbite.prv_timestamp matches 0 at @s run function sharkbite:when_hurt/if_positive_result
scoreboard players operation @s sharkbite.prv_timestamp = %temp% sharkbite.prv_timestamp
